
predict_from_probability_density = function(probable_density_output, n_data_sampled = 10000, 
                                    quantile = NULL, # The quantile required as character (e.g. "0.5")
                                    rnorm = F, replace = T){
  
  ## Initialisation
  
  proba_df = probable_density_output$QUANTILE
  if(!is.null(quantile)) quantile_proba = subset(proba_df, as.character(QUANTILE) == quantile)
  
  
  ## Prediction of data using the combined probabilities and not taking into account a normal distribution
  
  if(!rnorm && is.null(quantile)) 
    predicted_data = sample(proba_df$DATA, n_data_sampled, prob = proba_df$COMBINED_PROBA, replace = replace)
  
  
  ## Prediction of data using the combined probabilities and taking into account a normal distribution
  
  if(rnorm && is.null(quantile)) 
    predicted_data = sample(proba_df$DATA, n_data_sampled, prob = proba_df$COMBINED_PROBA, replace = replace) + rnorm(n_data_sampled, 0)
  
  
  ## Prediction of data using the specified quantile and not taking into account a normal distribution
  
  if(!rnorm && !is.null(quantile)) 
    predicted_data = sample(quantile_proba$DATA, n_data_sampled, prob = quantile_proba$COMBINED_PROBA, replace = replace)
  
  
  ## Prediction of data using the specified quantile and taking into account a normal distribution
  
  if(rnorm && !is.null(quantile)) 
    predicted_data = sample(quantile_proba$DATA, n_data_sampled, prob = quantile_proba$COMBINED_PROBA, replace = replace) + rnorm(n_data_sampled, 0)
  
  
  ## Return the vector of predicted datz
  
  return(predicted_data)
  
}
