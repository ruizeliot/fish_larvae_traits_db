estimate_probability_density = function(n_samp, mean_samp, sd_samp, min_samp, max_samp, n_boot = 1000, 
                                 res_densities = 100, keep_densities = F,
                                 quant_dens = c(seq(0.025, 0.975, by = 0.01), 0.5), 
                                 quant_group = seq(0.025, 0.975, by = 0.05),
                                 range_g = seq(-1, 1, by = 0.1), range_h = seq(0, 2, by = 0.1)){
  
  ## Storing input values and checking parameters
  
  quant_dens = sort(quant_dens)
  quant_group = sort(quant_group)
  
  nrow_boot_density = n_boot * res_densities * length(range_g) * length(range_h)
  
  boot_parameters = tibble(N = n_samp, MEAN = mean_samp, SD = sd_samp, MIN = min_samp, 
                           MAX = max_samp, BOOT = n_boot, TUKEY_G = range_g, TUKEY_H = range_h)
  
  if(length(quant_group) %% 2 != 0) 
    stop('The argument "quant_group" is not a vector of even length to group by pairs')
  
  if(nrow_boot_density > 50000000)
    warning(paste0('Creating a table with ', nrow_boot_density, ' rows. Consider reducing "n_boot".'))
  
  
  ## Initialisation of the parallelisation on all cores except 1 and of the progress bar
  
  totalCores = detectCores()
  cluster = makeCluster(totalCores[1]-1) 
  registerDoParallel(cluster)
  registerDoSNOW(cluster)
  
  progress_bar = txtProgressBar(max = n_boot, style = 3)
  progress = function(n) setTxtProgressBar(progress_bar, n)
  opts = list(progress = progress)
  
  
  ## Generating Tukey's distributions for all combination of g and h and randomly sampling values (bootstrapped)
  
  boot_g_h_list = foreach(i = 1:n_boot, .options.snow = opts) %dopar% {
    
    g_h_list = list()
    
    for(h_index in 1:length(range_h)){
      
      g_list = list()
      
      for(g_index in 1:length(range_g)){
        
        randomly_sampled_tukey = tukeyGH::rgh(n = n_samp, a = mean_samp, b = sd_samp, 
                                              g = range_g[g_index], h = range_h[h_index])
        
        dens_sampled_tukey = density(randomly_sampled_tukey, from = min_samp, to = max_samp, n = res_densities)
        
        g_list[[g_index]] =
          data.frame(DATA = dens_sampled_tukey$x, DENSITY = dens_sampled_tukey$y,
                     TUKEY_G = range_g[g_index], TUKEY_H = range_h[h_index])
        
      }
      
      g_h_list[[h_index]] = g_list
      
    }
    
    return(g_h_list)
    
  }
  
  
  ## Converting the list into a table and adding the number of samples as the grouping factor
  
  boot_density = tibble(bind_rows(lapply(boot_g_h_list, function(x) 
    bind_rows(lapply(x, function(y) bind_rows(y)))), .id = "BOOT"))
  boot_density$BOOT = as.numeric(boot_density$BOOT)
  
  
  ## Computing quantiles considering all density functions together
  
  boot_quantile = boot_density %>% ungroup() %>% group_by(DATA) %>% 
    summarise(QUANTILE = quant_dens,
            QUANTILE_DENSITY = quantile(DENSITY, quant_dens))
  
  
  ## Erasing the unnecessary data
  
  if(!keep_densities) boot_density = "erased"
  
  gc()
  
  
  ## Associating a triangular function of probabilities to each quantile within the same range than the density
  
  max_quantile_density = max(boot_quantile$QUANTILE_DENSITY) # To give the same weight to the density and the proba
  
  if(length(quant_dens) %% 2 == 0){
    
    index_min_dens = 1:(length(quant_dens)/2)
    index_max_dens = (length(quant_dens)/2+1):length(quant_dens)
    proba_per_quantile = tibble(QUANTILE = c(quant_dens[index_min_dens], rev(quant_dens[index_max_dens])),
                                QUANTILE_PROBA = rep(seq(0, max_quantile_density, 
                                                         length.out = length(quant_dens)/2), 2))
    
  }
  
  else{
    
    index_median_dens = which(quant_dens == median(quant_dens))
    index_min_dens = 1:(index_median_dens - 1)
    index_max_dens = (index_median_dens + 1):length(quant_dens)
    proba_per_quantile = tibble(QUANTILE = c(quant_dens[index_median_dens], 
                                             quant_dens[index_min_dens], rev(quant_dens[index_max_dens])),
                                QUANTILE_PROBA = c(max_quantile_density, 
                                                   rep(seq(0, max_quantile_density, 
                                                           length.out = (length(quant_dens)-1)/2), 2)))
    
  }
  
 
  ## Weighting the density by the quantile probability
  
  boot_quantile = tibble(merge(boot_quantile, proba_per_quantile)) %>%
    mutate(COMBINED_PROBA = QUANTILE_DENSITY * QUANTILE_PROBA)
  boot_quantile = boot_quantile[,c(2,1,3:5)]
  
  
  ## Converting to a wide table containing only grouping quantiles (for graphical purposes)
  
  boot_quantile_graph = boot_quantile %>% mutate(QUANTILE = as.character(QUANTILE)) %>%
    filter(QUANTILE %in% as.character(quant_group)) %>%
    pivot_wider(id_cols = !QUANTILE_PROBA:COMBINED_PROBA, names_from = QUANTILE, values_from = QUANTILE_DENSITY)
  
  
  ## Grouping columns indices per group of opposed quantiles (for graphical purposes)
  
  index_min_group = 1:(length(quant_group)/2)
  index_max_group = (length(quant_group)/2+1):length(quant_group)
  
  names_min_group = tibble(COL = index_min_group + 1, QUANT = quant_group[index_min_group], 
                           NAME = paste0("group", index_min_group))
  names_max_group = tibble(COL = rev(index_max_group + 1), QUANT = rev(quant_group[index_max_group]), 
                           NAME = paste0("group", index_min_group))
  names_quant_group = rbind(names_min_group, names_max_group)
  
  
  ## Grouping columns indices per group of opposed quantiles (for graphical purposes)
  
  wide_quant_group_list = list()
  
  for(group in unique(names_quant_group$NAME)){
    
    quant_group = subset(names_quant_group, NAME == group)
    
    wide_quant_group_list[[group]] = boot_quantile_graph[, c(1, min(quant_group$COL), max(quant_group$COL))] %>% 
      pivot_longer(!DATA, names_to = "QUANTILE", values_to = "DENSITY") %>%
      mutate(GROUP = paste0(QUANTILE[1], "_", QUANTILE[2]), QUANTILE = rep(c("MIN", "MAX"), n()/2)) %>% 
      pivot_wider(names_from = QUANTILE, values_from = DENSITY)
    
  }
  
  binned_quantiles = do.call("rbind", wide_quant_group_list)
  
  
  ## Returning created objects
  
  if(!keep_densities) return(list(PARAM = boot_parameters, QUANTILE = boot_quantile, BINS = binned_quantiles))
  
  else return(list(PARAM = boot_parameters, DENSITY = boot_density, QUANTILE = boot_quantile, BINS = binned_quantiles))
  
}
