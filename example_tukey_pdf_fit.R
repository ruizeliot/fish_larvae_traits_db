
#### INITIALISATION ####

## Loading required packages

library(tidyverse)
library(tukeyGH)
library(akima)
library(doParallel)
library(doSNOW)


## Loading custom functions to compute, plot and predict PLD

source("estimate_probability_density.R")
source("predict_from_probability_density.R")
source("graph_probability_density.R")





#### TIPS IF SD IS UNKNOWN ####

# library(estmeansd)
# 
# # If sd is known
# sd_samp = 2
# 
# # If se is known but not sd
# se_samp = 0.365
# sqrt(n_samp) * se_samp
# 
# # Rough estimate of sd if unknown
# (max_samp - min_samp)/4 
# 
# # More precise methods considering the mean as the median
# qe.mean.sd(min.val = min_samp, med.val = mean_samp, max.val = max_samp, n = n_samp)$est.sd # Quantile estimation (QE) method
# bc.mean.sd(min.val = min_samp, med.val = mean_samp, max.val = max_samp, n = n_samp)$est.sd # Box-Cox (BC) method
# mln.mean.sd(min.val = min_samp, med.val = mean_samp, max.val = max_samp, n = n_samp)$est.sd # Method for Unknown Non-Normal Distributions (MLN)



#### PLD PROBABILITY DENSITY FUNCTIONS FOR VARYING SAMPLING SIZE ####

## Species 1 with n = 5

sp1_n5_boot = 1000
sp1_n5_n = 5
sp1_n5_mean = 43.5
sp1_n5_sd = 2
sp1_n5_min = 35
sp1_n5_max = 52

sp1_n5_pdf = estimate_probability_density(n_samp = sp1_n5_n, mean_samp = sp1_n5_mean, 
                                          sd_samp = sp1_n5_sd, min_samp = sp1_n5_min, 
                                          max_samp = sp1_n5_max, n_boot = sp1_n5_boot)
sp1_n5_pdf

predicted_data_sp1_n5 = predict_from_probability_density(sp1_n5_pdf)
summary(predicted_data_sp1_n5)
hist(predicted_data_sp1_n5)

graph_sp1_n5 = graph_probability_density(sp1_n5_pdf, predicted_data = predicted_data_sp1_n5)


## Species 1 with n = 10

sp1_n10_pdf = estimate_probability_density(n_samp = sp1_n10_n, mean_samp = sp1_n10_mean, 
                                           sd_samp = sp1_n10_sd, min_samp = sp1_n10_min, 
                                           max_samp = sp1_n10_max, n_boot = sp1_n10_boot)
sp1_n10_pdf

predicted_data_sp1_n10 = predict_from_probability_density(sp1_n10_pdf)
summary(predicted_data_sp1_n10)
hist(predicted_data_sp1_n10)

graph_sp1_n10 = graph_probability_density(sp1_n10_pdf, predicted_data = predicted_data_sp1_n10)


## Species 1 with n = 50

sp1_n50_boot = 1000
sp1_n50_n = 50
sp1_n50_mean = 43.5
sp1_n50_sd = 2
sp1_n50_min = 35
sp1_n50_max = 52

sp1_n50_pdf = estimate_probability_density(n_samp = sp1_n50_n, mean_samp = sp1_n50_mean, 
                                           sd_samp = sp1_n50_sd, min_samp = sp1_n50_min, 
                                           max_samp = sp1_n50_max, n_boot = sp1_n50_boot)
sp1_n50_pdf

predicted_data_sp1_n50 = predict_from_probability_density(sp1_n50_pdf)
summary(predicted_data_sp1_n50)
hist(predicted_data_sp1_n50)

graph_sp1_n50 = graph_probability_density(sp1_n50_pdf, predicted_data = predicted_data_sp1_n50)


## Species 1 with n = 100

sp1_n100_boot = 1000
sp1_n100_n = 100
sp1_n100_mean = 43.5
sp1_n100_sd = 2
sp1_n100_min = 35
sp1_n100_max = 52

sp1_n100_pdf = estimate_probability_density(n_samp = sp1_n100_n, mean_samp = sp1_n100_mean, 
                                            sd_samp = sp1_n100_sd, min_samp = sp1_n100_min, 
                                            max_samp = sp1_n100_max, n_boot = sp1_n100_boot)
sp1_n100_pdf

predicted_data_sp1_n100 = predict_from_probability_density(sp1_n100_pdf)
summary(predicted_data_sp1_n100)
hist(predicted_data_sp1_n100)

graph_sp1_n100 = graph_probability_density(sp1_n100_pdf, predicted_data = predicted_data_sp1_n100)






#### PLD PROBABILITY DENSITY FUNCTIONS FOR VARYING STANDARD DEVIATIONS ####

## Species 1 with sd = 0.5

sp1_sd0.5_boot = 1000
sp1_sd0.5_n = 10
sp1_sd0.5_mean = 43.5
sp1_sd0.5_sd = 0.5
sp1_sd0.5_min = 35
sp1_sd0.5_max = 52

sp1_sd0.5_pdf = estimate_probability_density(n_samp = sp1_sd0.5_n, mean_samp = sp1_sd0.5_mean, 
                                             sd_samp = sp1_sd0.5_sd, min_samp = sp1_sd0.5_min, 
                                             max_samp = sp1_sd0.5_max, n_boot = sp1_sd0.5_boot)
sp1_sd0.5_pdf

predicted_data_sp1_sd0.5 = predict_from_probability_density(sp1_sd0.5_pdf)
summary(predicted_data_sp1_sd0.5)
hist(predicted_data_sp1_sd0.5)

graph_sp1_sd0.5 = graph_probability_density(sp1_sd0.5_pdf, predicted_data = predicted_data_sp1_sd0.5)


## Species 1 with sd = 1

sp1_sd1_boot = 1000
sp1_sd1_n = 10
sp1_sd1_mean = 43.5
sp1_sd1_sd = 1
sp1_sd1_min = 35
sp1_sd1_max = 52

sp1_sd1_pdf = estimate_probability_density(n_samp = sp1_sd1_n, mean_samp = sp1_sd1_mean, 
                                           sd_samp = sp1_sd1_sd, min_samp = sp1_sd1_min, 
                                           max_samp = sp1_sd1_max, n_boot = sp1_sd1_boot)
sp1_sd1_pdf

predicted_data_sp1_sd1 = predict_from_probability_density(sp1_sd1_pdf)
summary(predicted_data_sp1_sd1)
hist(predicted_data_sp1_sd1)

graph_sp1_sd1 = graph_probability_density(sp1_sd1_pdf, predicted_data = predicted_data_sp1_sd1)


## Species 1 with sd = 5

sp1_sd5_boot = 1000
sp1_sd5_n = 10
sp1_sd5_mean = 43.5
sp1_sd5_sd = 5
sp1_sd5_min = 35
sp1_sd5_max = 52

sp1_sd5_pdf = estimate_probability_density(n_samp = sp1_sd5_n, mean_samp = sp1_sd5_mean, 
                                           sd_samp = sp1_sd5_sd, min_samp = sp1_sd5_min, 
                                           max_samp = sp1_sd5_max, n_boot = sp1_sd5_boot)
sp1_sd5_pdf

predicted_data_sp1_sd5 = predict_from_probability_density(sp1_sd5_pdf)
summary(predicted_data_sp1_sd5)
hist(predicted_data_sp1_sd5)

graph_sp1_sd5 = graph_probability_density(sp1_sd5_pdf, predicted_data = predicted_data_sp1_sd5)







#### PLD PROBABILITY DENSITY FUNCTIONS FOR VARYING MEAN AND MAX ####

## Species 1 with left skewed mean

sp1_mean38_boot = 1000
sp1_mean38_n = 10
sp1_mean38_mean = 38
sp1_mean38_sd = 2
sp1_mean38_min = 35
sp1_mean38_max = 52

sp1_mean38_pdf = estimate_probability_density(n_samp = sp1_mean38_n, mean_samp = sp1_mean38_mean, 
                                              sd_samp = sp1_mean38_sd, min_samp = sp1_mean38_min, 
                                              max_samp = sp1_mean38_max, n_boot = sp1_mean38_boot)
sp1_mean38_pdf

predicted_data_sp1_mean38 = predict_from_probability_density(sp1_mean38_pdf)
summary(predicted_data_sp1_mean38)
hist(predicted_data_sp1_mean38)

graph_sp1_mean38 = graph_probability_density(sp1_mean38_pdf, predicted_data = predicted_data_sp1_mean38)


## Species 1 with right skewed mean

sp1_mean49_boot = 1000
sp1_mean49_n = 10
sp1_mean49_mean = 49
sp1_mean49_sd = 2
sp1_mean49_min = 35
sp1_mean49_max = 52

sp1_mean49_pdf = estimate_probability_density(n_samp = sp1_mean49_n, mean_samp = sp1_mean49_mean, 
                                              sd_samp = sp1_mean49_sd, min_samp = sp1_mean49_min, 
                                              max_samp = sp1_mean49_max, n_boot = sp1_mean49_boot)
sp1_mean49_pdf

predicted_data_sp1_mean49 = predict_from_probability_density(sp1_mean49_pdf)
summary(predicted_data_sp1_mean49)
hist(predicted_data_sp1_mean49)

graph_sp1_mean49 = graph_probability_density(sp1_mean49_pdf, predicted_data = predicted_data_sp1_mean49)


## Species 1 with high maximum

sp1_max62_boot = 1000
sp1_max62_n = 10
sp1_max62_mean = 43.5
sp1_max62_sd = 2
sp1_max62_min = 35
sp1_max62_max = 62

sp1_max62_pdf = estimate_probability_density(n_samp = sp1_max62_n, mean_samp = sp1_max62_mean, 
                                             sd_samp = sp1_max62_sd, min_samp = sp1_max62_min, 
                                             max_samp = sp1_max62_max, n_boot = sp1_max62_boot)
max(as.numeric(sp1_max62_pdf$VALUES$BOOT))

predicted_data_sp1_max62 = predict_from_probability_density(sp1_max62_pdf)
summary(predicted_data_sp1_max62)
hist(predicted_data_sp1_max62)

graph_sp1_max62 = graph_probability_density(sp1_max62_pdf, predicted_data = predicted_data_sp1_max62)


## Species 1 with very high maximum

sp1_max72_boot = 1000
sp1_max72_n = 10
sp1_max72_mean = 43.5
sp1_max72_sd = 2
sp1_max72_min = 35
sp1_max72_max = 72

sp1_max72_pdf = estimate_probability_density(n_samp = sp1_max72_n, mean_samp = sp1_max72_mean, 
                                             sd_samp = sp1_max72_sd, min_samp = sp1_max72_min, 
                                             max_samp = sp1_max72_max, n_boot = sp1_max72_boot)
sp1_max72_pdf

predicted_data_sp1_max72 = predict_from_probability_density(sp1_max72_pdf)
summary(predicted_data_sp1_max72)
hist(predicted_data_sp1_max72)

graph_sp1_max72 = graph_probability_density(sp1_max72_pdf, predicted_data = predicted_data_sp1_max72)







#### PLD PROBABILITY DENSITY FUNCTIONS FOR VARYING BOOTSTRAP ITERATIONS ####

## Species 1 with boot = 5

sp1_boot5_boot = 5
sp1_boot5_n = 10
sp1_boot5_mean = 43.5
sp1_boot5_sd = 2
sp1_boot5_min = 35
sp1_boot5_max = 52

sp1_boot5_pdf = estimate_probability_density(n_samp = sp1_boot5_n, mean_samp = sp1_boot5_mean, 
                                             sd_samp = sp1_boot5_sd, min_samp = sp1_boot5_min, 
                                             max_samp = sp1_boot5_max, n_boot = sp1_boot5_boot)
sp1_boot5_pdf

predicted_data_sp1_boot5 = predict_from_probability_density(sp1_boot5_pdf)
summary(predicted_data_sp1_boot5)
hist(predicted_data_sp1_boot5)

graph_sp1_boot5 = graph_probability_density(sp1_boot5_pdf, predicted_data = predicted_data_sp1_boot5)


## Species 1 with boot = 10

sp1_boot10_boot = 10
sp1_boot10_n = 10
sp1_boot10_mean = 43.5
sp1_boot10_sd = 2
sp1_boot10_min = 35
sp1_boot10_max = 52

sp1_boot10_pdf = estimate_probability_density(n_samp = sp1_boot10_n, mean_samp = sp1_boot10_mean, 
                                              sd_samp = sp1_boot10_sd, min_samp = sp1_boot10_min, 
                                              max_samp = sp1_boot10_max, n_boot = sp1_boot10_boot)
sp1_boot10_pdf

predicted_data_sp1_boot10 = predict_from_probability_density(sp1_boot10_pdf)
summary(predicted_data_sp1_boot10)
hist(predicted_data_sp1_boot10)

graph_sp1_boot10 = graph_probability_density(sp1_boot10_pdf, predicted_data = predicted_data_sp1_boot10)


## Species 1 with boot = 50

sp1_boot50_boot = 50
sp1_boot50_n = 10
sp1_boot50_mean = 43.5
sp1_boot50_sd = 2
sp1_boot50_min = 35
sp1_boot50_max = 52

sp1_boot50_pdf = estimate_probability_density(n_samp = sp1_boot50_n, mean_samp = sp1_boot50_mean, 
                                              sd_samp = sp1_boot50_sd,  min_samp = sp1_boot50_min, 
                                              max_samp = sp1_boot50_max, n_boot = sp1_boot50_boot)
sp1_boot50_pdf

predicted_data_sp1_boot50 = predict_from_probability_density(sp1_boot50_pdf)
summary(predicted_data_sp1_boot50)
hist(predicted_data_sp1_boot50)

graph_sp1_boot50 = graph_probability_density(sp1_boot50_pdf, predicted_data = predicted_data_sp1_boot50)


## Species 1 with boot = 100

sp1_boot100_boot = 100
sp1_boot100_n = 10
sp1_boot100_mean = 43.5
sp1_boot100_sd = 2
sp1_boot100_min = 35
sp1_boot100_max = 52

sp1_boot100_pdf = estimate_probability_density(n_samp = sp1_boot100_n, mean_samp = sp1_boot100_mean, 
                                               sd_samp = sp1_boot100_sd, min_samp = sp1_boot100_min, 
                                               max_samp = sp1_boot100_max, n_boot = sp1_boot100_boot)
sp1_boot100_pdf

predicted_data_sp1_boot100 = predict_from_probability_density(sp1_boot100_pdf)
summary(predicted_data_sp1_boot100)
hist(predicted_data_sp1_boot100)

graph_sp1_boot100 = graph_probability_density(sp1_boot100_pdf, predicted_data = predicted_data_sp1_boot100)


## Species 1 with boot = 500

sp1_boot500_boot = 500
sp1_boot500_n = 10
sp1_boot500_mean = 43.5
sp1_boot500_sd = 2
sp1_boot500_min = 35
sp1_boot500_max = 52

sp1_boot500_pdf = estimate_probability_density(n_samp = sp1_boot500_n, mean_samp = sp1_boot500_mean, 
                                               sd_samp = sp1_boot500_sd, min_samp = sp1_boot500_min, 
                                               max_samp = sp1_boot500_max, n_boot = sp1_boot500_boot)
sp1_boot500_pdf

predicted_data_sp1_boot500 = predict_from_probability_density(sp1_boot500_pdf)
summary(predicted_data_sp1_boot500)
hist(predicted_data_sp1_boot500)

graph_sp1_boot500 = graph_probability_density(sp1_boot500_pdf, predicted_data = predicted_data_sp1_boot500)
