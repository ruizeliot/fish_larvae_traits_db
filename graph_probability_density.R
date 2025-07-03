graph_probability_density = function(probable_density_output, predicted_data, # vector of values or NULL to remove this layer
                             n_data_raster = 500, n_density_raster = 1000, 
                             title_sizes = 7, border_masking = 0.01, print = T){
  
  ## Initialisation
  
  options(dplyr.summarise.inform = FALSE)
  
  quantile_density = probable_density_output$QUANTILE
  binned_quantiles = probable_density_output$BINS
  
  n_samp = unique(probable_density_output$PARAM$N)
  mean_samp = unique(probable_density_output$PARAM$MEAN)
  sd_samp = unique(probable_density_output$PARAM$SD)
  min_samp = unique(probable_density_output$PARAM$MIN)
  max_samp = unique(probable_density_output$PARAM$MAX)
  n_boot = max(probable_density_output$PARAM$BOOT)
  
  
  ## Grouping values and densities by discrete groups to get a raster of mean combined probabilities
  
  quantile_density_raster = quantile_density %>%
    mutate(DATA_BREAKS = cut(DATA, breaks = 
                              seq(min(quantile_density$DATA), 
                                  max(quantile_density$DATA), length.out = n_data_raster)),
           DENSITY_BREAKS = cut(QUANTILE_DENSITY, breaks = # Round to avoid floating numbers errors
                                  seq(min(round(quantile_density$QUANTILE_DENSITY, 4)), 
                                      max(round(quantile_density$QUANTILE_DENSITY, 4)), length.out = n_density_raster))) %>%
    group_by(DATA_BREAKS, DENSITY_BREAKS) %>% summarise(MEAN_PROBA = mean(COMBINED_PROBA, na.rm = T))
  
  
  ## Summarising each group by a single numeric values and density value (minimum) to get a regular grid
  
  quantile_density_raster$MIN_DATA = 
    as.numeric(gsub("[(]", "", word(quantile_density_raster$DATA_BREAKS, 1, sep = ",")))
  quantile_density_raster$MIN_DENSITY = 
    as.numeric(gsub("[(]", "", word(quantile_density_raster$DENSITY_BREAKS, 1, sep = ",")))
  
  
  ## Interpolating the incomplete raster to a complete raster (full domain) and replacing NA by 0 (borders)
  
  quantile_density_full_raster = tibble(interp2xyz(interp(
    x = quantile_density_raster[complete.cases(quantile_density_raster),]$MIN_DATA, 
    y = quantile_density_raster[complete.cases(quantile_density_raster),]$MIN_DENSITY, 
    z = quantile_density_raster[complete.cases(quantile_density_raster),]$MEAN_PROBA, 
    duplicate = "mean"), data.frame = TRUE))
  quantile_density_full_raster$z[is.na(quantile_density_full_raster$z)] = 0
  
  
  ## Interpolating the incomplete raster to a complete raster (full domain)
  
  graph_quantile_density = ggplot(data = quantile_density, aes(x = DATA)) +
    
    # Interpolated raster of combined probabilities
    geom_raster(data = quantile_density_full_raster, aes(x = x, y = y, fill = z), interpolate = T, alpha = 0.8) +
    scale_fill_distiller(name = "PROBABILITY", palette = "Spectral") +
    
    # Masking layers (below and above) to get only the probability raster between the 5% and 95% quantiles
    geom_ribbon(data = subset(binned_quantiles, GROUP == "0.025_0.975"), 
                aes(ymin = MAX, ymax = Inf, group = GROUP), 
                fill = "white", lwd = 0, show.legend = FALSE) +
    geom_ribbon(data = subset(binned_quantiles, GROUP == "0.025_0.975"), 
                aes(ymin = -Inf, ymax = MIN, group = GROUP), 
                fill = "white", lwd = 0, show.legend = FALSE) +
    
    # Solid lines to represent the 5% and 95% quantile densities
    geom_ribbon(data = subset(binned_quantiles, GROUP == "0.025_0.975"), 
                aes(ymin = MIN, ymax = MAX, group = GROUP, alpha = GROUP), 
                color = "black", show.legend = FALSE) +
    
    # Dashed lines to represent the 25% and 75% quantile densities
    geom_ribbon(data = subset(binned_quantiles, GROUP == "0.125_0.875"),
                aes(ymin = MIN, ymax = MAX, group = GROUP, alpha = GROUP),
                linetype = "dashed", color = "black", fill = NA, show.legend = FALSE) +
    
    # Red line to represent the median (50% quantile) of all estimated densities
    geom_line(data = subset(quantile_density, as.character(QUANTILE) == "0.5"), 
              aes(y = QUANTILE_DENSITY), size = 1.1, color = "red") +
    
    # Green line to represent the density of randomly sampled data
    geom_density(data = tibble(), aes(x = predicted_data, y = ..density..), 
                 size = 1.1, color = "#31a354", inherit.aes = FALSE) +
    
    # Masking layer not the show the left and right borders of the raster
    geom_rect(aes(xmin = -Inf, xmax = (1 + border_masking) * min_samp, ymin = -Inf, ymax = Inf), 
              fill = "white", inherit.aes = FALSE) +
    geom_rect(aes(xmin = (1 - border_masking) * max_samp, xmax = Inf, ymin = -Inf, ymax = Inf), 
              fill = "white", inherit.aes = FALSE) +
    
    # Theme of the plot (to be able to print 3 graph sides by sides on a full frame)
    theme_minimal() + xlim(min_samp, max_samp) +
    theme(legend.position = "none", plot.title = element_text(size = title_sizes),
          axis.text.y = element_text(size = title_sizes), axis.title.y = element_text(size = title_sizes),
          axis.text.x = element_text(size = title_sizes), axis.title.x = element_text(size = title_sizes)) + 
    
    # Title of the graph with all parameters used to contruct the densities
    labs(x = "DATA", y = "DENSITY", 
         title = paste0("I = ", n_boot, ", N = ", n_samp, ", MEAN = ", round(mean_samp, 2), 
                        ", SD = ", round(sd_samp, 2), ", MIN = ", round(min_samp, 2),
                        ", MAX = ", round(max_samp, 2)))
  
  if(print) print(graph_quantile_density)
  
  return(list(GRAPH = graph_quantile_density, PROBA_RASTER = quantile_density_full_raster))
  
}
