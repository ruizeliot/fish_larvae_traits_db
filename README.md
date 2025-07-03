# Dispersive traits of marine fishes' early life stages 

PURPOSE, PROBABILITY DENSITY FUNCTIONS AND CITATION PART TO ADD

A total of 7 categorical variables and 28 numerical variables constitute the core of our dispersive traits database, which is segmented into 17 different databases, each dedicated to a specific trait or data type. We adopted a standardized way to provide all statistical descriptors of numeric variables in separate columns identified by specific suffixes in their names: mean (`_MEAN`), minimum (`_MIN`), maximum (`_MAX`), variability (`_CONF`), mean type (`_MEAN_TYPE`), range type (`_RANGE_TYPE`) and variability type (`_CONF_TYPE`). These columns are complemented by 57 metadata types relevant for interpreting each dispersive trait (e.g., origin, temperature, sample size, variable type, definitions). The number of metadata fields varies between databases, ranging from 2 (rafting) to 17 (settlement size), with an average of 8. Missing data also varies widely across databases (mean percentage of NA ranging from 5.5% to 83.3%, average 50.2%).



## General columns
Description of columns systematically present in all databases, providing the taxonomy and references for each record, along with easy access to the source using the URL/DOI. The valid name (and associated taxonomic information) can be used as the backbone for linking records across all other databases, but this should not be done using the original name that might vary among references for a single species.

| Variable      | Type      |   Missing values (%) | Description                                                                                        |
|:--------------|:----------|---------:|:---------------------------------------------------------------------------------------------------|
| ORDER         | character |        0 | Valid order according to WoRMS (2025)                                                              |
| FAMILY        | character |        0 | Valid family according to WoRMS (2025)                                                             |
| GENUS         | character |        0 | Valid genus according to WoRMS (2025)                                                              |
| VALID_NAME    | character |        0 | Valid species according to WoRMS (2025)                                                            |
| APHIA_ID      | character |        0 | WoRMS aphia ID of the valid species name (2025)                                                    |
| AUTHORITY     | character |        0 | Authority (description study) of the valid species from WoRMS                                      |
| ORIGINAL_NAME | character |        0 | Original species name in the source study                                                          |
| EXT_REF       | character |      NA | Source study of the information cited in the main reference (given as 'AUTHORS, DATE')             |
| REFERENCE     | character |      NA | Main reference from which the information has been retrieved (given as 'AUTHORS (DATE) - JOURNAL') |
| LINK          | character |      NA | URL or DOI to access easily the main reference                                                     |

---



## Larval growth rate database
This individual-level database contains records of age-length/weight measurements across at least two-thirds of the larval phase, in relation to temperature (or other factors in the `REMARKS` column).

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| ORIGIN                    | categorical| 0          | Categories: Reared; Wild                                                | Whether growth was estimated from reared or wild individuals                |
| METHOD                    | categorical| 0          | Categories: Otolithometry; Rearing; Rearing (age-length relationship) and otolithometry (wild age) | Methodology used to determine the age-length relationship                  |
| AGE                       | numeric    | 0.2        | Mean: 18.41, Range: 0.00 - 270.00                                      | Age of larvae in days post-hatch (DPH)                                     |
| LENGTH                    | numeric    | 2.7        | Mean: 10.45, Range: 0.01 - 256.80                                      | Length measurement of larvae (in mm) associated with a specific age         |
| WEIGHT                    | numeric    | 97.8       | Mean: 13.69, Range: 0.00 - 660.00                                      | Weight measurement of larvae (in mg) associated with a specific age         |
| LENGTH_TYPE               | categorical| 0          | Categories: SL; TL                                                      | Type of length measurement: SL (Standard Length) or TL (Total Length)      |
| WEIGHT_TYPE               | categorical| 0          | Categories: DW; WW                                                      | Type of weight measurement: WW (Wet Weight) or DW (Dry Weight)             |
| TEMPERATURE_MEAN          | numeric    | 12.7       | Mean: 20.36, Range: 2.00 - 32.00                                       | Mean (or midrange) temperature (in °C) from hatching to metamorphosis for reared individuals |
| TEMPERATURE_MIN           | numeric    | 31.3       | Mean: 18.78, Range: 3.10 - 30.20                                       | Minimum temperature (in °C) from hatching to metamorphosis for reared individuals |
| TEMPERATURE_MAX           | numeric    | 31.3       | Mean: 21.81, Range: 5.50 - 35.00                                       | Maximum temperature (in °C) during rearing from hatching to metamorphosis for reared individuals |
| TEMPERATURE_MEAN_TYPE     | categorical| 11.8       | Categories: mean; midrange                                              | Whether the mean temperature corresponds to the real mean provided in the source study, or a midrange computed from the min/max if the real mean is missing |
| REMARKS                   | character  | 71.1       |                                                                         | Additional notes on rearing methodologies or age estimation techniques      |

---



## Egg, yolk and oil globule database (position, shape, size and volume)
This species-level database documents egg characteristics, including position in the water column, shape, size, and volume, as well as information about the yolk and oil globules inside the egg.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| EGG_LOCATION              | categorical| 14.4       | Categories: Benthic; Benthic (mouth/pouch); Benthic (nest spawners); etc. | Description of the position of eggs in the water column with general details given between parenthesis |
| EGG_DETAILS               | categorical| 91.6       | Categories: Attached (suspended) eggs; Attached and sinking eggs; etc.   | Additional description of the position of eggs in the water column with more details |
| EGG_SHAPE                 | categorical| 58.6       | Categories: not-spherical; spherical                                    | Shape of the egg determining if columns starting by EGG_L and columns starting by EGG_W are equal (spherical) or not (not-spherical) |
| EGG_L_MEAN                | numeric    | 64.1       | Mean: 1.46, Range: 0.15 - 20.50                                        | Mean length (or diameter if spherical) of the egg (in mm)                  |
| EGG_L_MIN                 | numeric    | 79.7       | Mean: 1.28, Range: 0.00 - 15.00                                        | Minimum length (or diameter if spherical) of the egg (in mm)               |
| EGG_L_MAX                 | numeric    | 79.7       | Mean: 1.60, Range: 0.29 - 26.00                                        | Maximum length (or diameter if spherical) of the egg (in mm)               |
| EGG_W_MEAN                | numeric    | 67.5       | Mean: 1.31, Range: 0.20 - 20.50                                        | Mean width (or diameter if spherical) of the egg (in mm)                   |
| EGG_W_MIN                 | numeric    | 81.1       | Mean: 1.19, Range: 0.00 - 15.00                                        | Minimum width (or diameter if spherical) of the egg (in mm)                |
| EGG_W_MAX                 | numeric    | 81.1       | Mean: 1.49, Range: 0.30 - 26.00                                        | Maximum width (or diameter if spherical) of the egg (in mm)                |
| EGG_L_MEAN_TYPE           | categorical| 64.1       | Categories: mean; midrange                                              | Whether the mean egg length corresponds to the real mean provided in the source study, or a midrange computed from the min/max if the real mean is missing |
| EGG_W_MEAN_TYPE           | categorical| 67.5       | Categories: mean; midrange                                              | Whether the mean egg width corresponds to the real mean provided in the source study, or a midrange computed from the min/max if the real mean is missing |
| EGG_DIAMETER_CONF         | numeric    | 99.6       | Mean: 0.04, Range: 0.00 - 0.30                                         | Confidence interval relative to the mean egg length/width (generally the same for both, or mean between the two otherwise) in mm |
| EGG_DIAMETER_CONF_TYPE    | categorical| 99.6       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| YOLK_SIZE_MEAN            | numeric    | 94.7       | Mean: 1.24, Range: 0.27 - 16.53                                        | Mean length (or diameter if spherical) of the yolk within the egg (in mm)  |
| YOLK_SIZE_MIN             | numeric    | 99.3       | Mean: 1.15, Range: 0.30 - 2.20                                         | Minimum length (or diameter if spherical) of the yolk within the egg (in mm) |
| YOLK_SIZE_MAX             | numeric    | 99.3       | Mean: 1.41, Range: 0.50 - 2.80                                         | Maximum length (or diameter if spherical) of the yolk within the egg (in mm) |
| YOLK_SIZE_MEAN_TYPE       | categorical| 94.7       | Categories: mean; midrange                                              | Whether the mean yolk diameter corresponds to the real mean provided in the source study, or a midrange computed from the min/max if the real mean is missing |
| NB_OIL_GLOBULE            | character  | 85.1       |                                                                         | Number or range of oil globule(s) present in the egg. Evolving number of oil globules through time (e.g., numerous collapsing into one) was given as a range. |
| OIL_GLOBULE_SIZE_MEAN     | numeric    | 90.6       | Mean: 0.25, Range: 0.02 - 3.45                                         | Mean length (or diameter if spherical) of the oil globule in the egg (in mm) |
| OIL_GLOBULE_SIZE_MIN      | numeric    | 93.5       | Mean: 0.21, Range: 0.01 - 3.00                                         | Minimum length (or diameter if spherical) of the oil globule in the egg (in mm) |
| OIL_GLOBULE_SIZE_MAX      | numeric    | 93.5       | Mean: 0.30, Range: 0.05 - 6.00                                         | Maximum length (or diameter if spherical) of the oil globule in the egg (in mm) |
| OIL_GLOBULE_SIZE_MEAN_TYPE| categorical| 90.9       | Categories: mean; midrange                                              | Whether the mean oil globule diameter corresponds to the real mean provided in the source study, or a midrange computed from the min/max if the real mean is missing |
| EGG_VOLUME_MEAN           | numeric    | 67         | Mean: 8.53, Range: 0.00 - 4510.87                                      | Mean egg volume in mm3. If not already provided in the source study, it was computed as "(4/3) * pi * (EGG_L_MEAN/2)^3" for spherical eggs, or as "(4/3) * pi * (EGG_L_MEAN/2) * (EGG_W_MEAN/2) * (EGG_W_MEAN/2))" for non-spherical eggs |
| EGG_VOLUME_MIN            | numeric    | 81         | Mean: 4.75, Range: 0.00 - 1767.15                                      | Minimum egg volume in mm3. If not already provided in the source study, it was computed similarly to EGG_VOLUME_MEAN but considering EGG_L_MIN and EGG_W_MIN |
| EGG_VOLUME_MAX            | numeric    | 81         | Mean: 12.87, Range: 0.02 - 9202.77                                     | Maximum egg volume in mm3. If not already provided in the source study, it was computed similarly to EGG_VOLUME_MEAN but considering EGG_L_MAX and EGG_W_MAX |
| EGG_VOLUME_TYPE           | categorical| 34.1       | Categories: Inferred from diameter; Inferred from diameter (min/max_diam = mean +/- 2 * SD); Original data | Whether the egg volume corresponds to measured data or was inferred from radius (precising that if the range was missing, it was inferred using the SD) |
| YOLK_VOLUME_MEAN          | numeric    | 94.7       | Mean: 12.11, Range: 0.01 - 2364.92                                     | Mean yolk volume in mm3. It was computed considering the yolk in the egg is spherical: "(4/3) * pi * (EGG_L_MEAN/2)^3". |
| YOLK_VOLUME_MIN           | numeric    | 99.3       | Mean: 1.34, Range: 0.01 - 5.58                                         | Minimum yolk volume in mm3. It was computed considering the yolk in the egg is spherical: "(4/3) * pi * (EGG_L_MEAN/2)^3". |
| YOLK_VOLUME_MAX           | numeric    | 99.3       | Mean: 2.37, Range: 0.06 - 11.49                                        | Maximum yolk volume in mm3. It was computed considering the yolk in the egg is spherical: "(4/3) * pi * (EGG_L_MEAN/2)^3". |
| YOLK_VOLUME_TYPE          | categorical| 94.7       | Categories: Inferred from diameter (assuming yolk is spherical)         | Column specifying whether the yolk volume was inferred from diameter (assuming it was spherical) or it was directly provided |
| OIL_GLOBULE_VOLUME_MEAN   | numeric    | 89.5       | Mean: 0.03, Range: 0.00 - 17.16                                        | Mean oil globule volume in egg (in mm3). It was computed if there was only 1 oil globule, considering it is spherical: "(4/3) * pi * (EGG_L_MEAN/2)^3". |
| OIL_GLOBULE_VOLUME_MIN    | numeric    | 95.9       | Mean: 0.01, Range: 0.00 - 0.66                                         | Minimum oil globule volume in egg (in mm3). It was computed if there was only 1 oil globule, considering it is spherical: "(4/3) * pi * (EGG_L_MEAN/2)^3". |
| OIL_GLOBULE_VOLUME_MAX    | numeric    | 95.9       | Mean: 0.02, Range: 0.00 - 1.32                                         | Maximum oil globule volume in egg (in mm3). It was computed if there was only 1 oil globule, considering it is spherical: "(4/3) * pi * (EGG_L_MEAN/2)^3". |
| OIL_GLOBULE_VOLUME_TYPE   | categorical| 89.5       | Categories: Inferred from diameter (0 or 1 oil globule)                 | Column specifying whether the oil globule volume was inferred from diameter or was directly provided |

---



## Incubation/gestation duration database
This species-level database records the duration of egg incubation or gestation (depending on the reproduction mode), along with associated temperature data.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| INCUBATION_GESTATION_HOUR_MEAN        | numeric    | 0          | Mean: 202.38, Range: 3.00 - 8760.00                                    | Mean (or midrange) duration of incubation in egg or gestation (in hours)    |
| INCUBATION_GESTATION_HOUR_MIN         | numeric    | 70.5       | Mean: 162.07, Range: 11.00 - 7200.00                                   | Minimum duration of incubation in egg or gestation (in hours)               |
| INCUBATION_GESTATION_HOUR_MAX         | numeric    | 70.5       | Mean: 237.52, Range: 14.00 - 8640.00                                   | Maximum duration of incubation in egg or gestation (in hours)               |
| INCUBATION_GESTATION_HOUR_MEAN_TYPE   | categorical| 0          | Categories: mean; midrange                                              | Indicates whether the mean incubation/gestation duration is a real mean or a midrange computed from min/max values |
| INCUBATION_GESTATION_TEMPERATURE_MEAN | numeric    | 26.7       | Mean: 20.76, Range: -1.00 - 30.50                                      | Mean (or midrange) temperature (in °C) during incubation or gestation period |
| INCUBATION_GESTATION_TEMPERATURE_MIN  | numeric    | 80         | Mean: 21.52, Range: 1.20 - 30.20                                       | Minimum temperature (in °C) during incubation or gestation period          |
| INCUBATION_GESTATION_TEMPERATURE_MAX  | numeric    | 80.1       | Mean: 23.90, Range: 1.60 - 32.00                                       | Maximum temperature (in °C) during incubation or gestation period          |
| INCUBATION_GESTATION_TEMPERATURE_MEAN_TYPE | categorical| 26.6       | Categories: mean; midrange                                              | Indicates whether the mean temperature is a real mean or a midrange computed from min/max values |

---



## Hatching/parturition size database
This species-level database documents the size of larvae at hatching or parturition (depending on the reproduction mode), along with rearing temperature data.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                         | character  | 97         |                                                                         | Number of individuals measured for hatching size                            |
| HATCHING_SIZE_MEAN        | numeric    | 0          | Mean: 4.05, Range: 0.70-57.50                                          | Mean (or midrange) size (in mm) at hatching or parturition                  |
| HATCHING_SIZE_MIN         | numeric    | 58.3       | Mean: 3.79, Range: 0.80 - 54.00                                        | Minimum size (in mm) at hatching or parturition                             |
| HATCHING_SIZE_MAX         | numeric    | 58.3       | Mean: 4.62, Range: 0.98 - 61.00                                        | Maximum size (in mm) at hatching or parturition                             |
| HATCHING_SIZE_CONF        | numeric    | 96.6       | Mean: 0.12, Range: 0.00 - 0.95                                         | Confidence interval (in mm) associated with the mean hatching or parturition size |
| HATCHING_SIZE_CONF_TYPE   | categorical| 96.7       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| REARING_TEMPERATURE_MEAN  | numeric    | 71.1       | Mean: 22.28, Range: 2.50 - 34.00                                       | Mean (or midrange) temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MIN   | numeric    | 76.3       | Mean: 22.17, Range: -1.00 - 34.00                                      | Minimum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MAX   | numeric    | 88.8       | Mean: 24.91, Range: 5.00 - 33.20                                       | Maximum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MEAN_TYPE | categorical| 71.1       | Categories: mean; midrange                                              | Indicates whether the mean rearing temperature is a real mean or a midrange computed from min/max values |

---



## Age at first feeding/yolk-absorption database
This species-level database tracks the timing of first feeding (start of exogenous nutrition) and yolk-sac absorption (complete depletion of egg resources), along with rearing temperature data.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|-----------------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                                 | numeric    | 97.5       | Mean: 27.33, Range: 1.00 - 110.00                                      | Number of individuals measured for age at first feeding or yolk absorption  |
| REARING_TEMPERATURE_MEAN          | numeric    | 17.2       | Mean: 22.21, Range: 4.40 - 34.00                                       | Mean (or midrange) temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MIN           | numeric    | 32.9       | Mean: 22.54, Range: 5.00 - 34.00                                       | Minimum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MAX           | numeric    | 74.7       | Mean: 25.65, Range: 7.00 - 32.00                                       | Maximum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MEAN_TYPE     | categorical| 17.2       | Categories: mean; midrange                                              | Indicates whether the mean rearing temperature is a real mean or a midrange computed from min/max values |
| FIRST_FEEDING_DPH_MEAN            | numeric    | 42         | Mean: 3.43, Range: 0.00 - 40.00                                        | Mean (or midrange) age (in days post-hatch) at first feeding (start of exogenous nutrition) |
| FIRST_FEEDING_DPH_MIN             | numeric    | 82.8       | Mean: 2.46, Range: 0.00 - 6.00                                         | Minimum age (in days post-hatch) at first feeding (start of exogenous nutrition) |
| FIRST_FEEDING_DPH_MAX             | numeric    | 82.8       | Mean: 3.74, Range: 1.00 - 8.00                                         | Maximum age (in days post-hatch) at first feeding (start of exogenous nutrition) |
| FIRST_FEEDING_DPH_MEAN_TYPE       | categorical| 42         | Categories: mean; midrange                                              | Indicates whether the mean age at first feeding is a real mean or a midrange computed from min/max values |
| YOLK_ABSORPTION_DPH_MEAN          | numeric    | 18.3       | Mean: 5.08, Range: 0.00 - 56.00                                        | Mean (or midrange) age (in days post-hatch) at yolk absorption (complete depletion of egg ressources) |
| YOLK_ABSORPTION_DPH_MIN           | numeric    | 84.5       | Mean: 4.78, Range: 0.00 - 42.00                                        | Minimum age (in days post-hatch) at yolk absorption (complete depletion of egg ressources) |
| YOLK_ABSORPTION_DPH_MAX           | numeric    | 84.5       | Mean: 6.97, Range: 1.00 - 70.00                                        | Maximum age (in days post-hatch) at yolk absorption (complete depletion of egg ressources) |
| YOLK_ABSORPTION_MEAN_TYPE         | categorical| 18.3       | Categories: mean; midrange                                              | Indicates whether the mean age at yolk absorption is a real mean or a midrange computed from min/max values |

---



## Size at first feeding/yolk-absorption database
This species-level database records the size of larvae at first feeding (start of exogenous nutrition) and yolk-sac absorption (complete depletion of egg resources), along with rearing temperature data.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|-----------------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                                 | numeric    | 95.9       | Mean: 22.50, Range: 1.00 - 110.00                                      | Number of individuals measured for size at first feeding or yolk absorption |
| REARING_TEMPERATURE_MEAN          | numeric    | 53.9       | Mean: 25.13, Range: 9.70 - 29.75                                       | Mean (or midrange) temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MIN           | numeric    | 58.4       | Mean: 23.83, Range: 8.20 - 29.00                                       | Minimum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MAX           | numeric    | 58.8       | Mean: 26.23, Range: 11.20 - 31.00                                      | Maximum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MEAN_TYPE     | categorical| 53.9       | Categories: mean; midrange                                              | Indicates whether the mean rearing temperature is a real mean or a midrange computed from min/max values |
| FIRST_FEEDING_SIZE_MEAN           | numeric    | 86         | Mean: 2.78, Range: 1.50 - 5.00                                         | Mean (or midrange) size (in mm) at first feeding (start of exogenous nutrition) |
| FIRST_FEEDING_SIZE_MIN            | numeric    | 98.8       | Mean: 2.94, Range: 2.20 - 4.24                                         | Minimum size (in mm) at first feeding (start of exogenous nutrition)       |
| FIRST_FEEDING_SIZE_MAX            | numeric    | 98.8       | Mean: 3.17, Range: 2.30 - 4.34                                         | Maximum size (in mm) at first feeding (start of exogenous nutrition)       |
| FIRST_FEEDING_SIZE_CONF           | numeric    | 99.6       | Mean: 3.16, Range: 3.16 - 3.16                                         | Confidence interval (in mm) associated with the mean size at first feeding |
| FIRST_FEEDING_SIZE_MEAN_TYPE      | categorical| 85.6       | Categories: mean; midrange                                              | Indicates whether the mean size at first feeding is a real mean or a midrange computed from min/max values |
| FIRST_FEEDING_SIZE_CONF_TYPE      | categorical| 100        |                                                                         | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| YOLK_SAC_ABSORBED_SIZE_MEAN       | numeric    | 13.2       | Mean: 4.28, Range: 1.50 - 17.00                                        | Mean (or midrange) size (in mm) at yolk sac absorption (complete depletion of egg ressources) |
| YOLK_SAC_ABSORBED_SIZE_MIN        | numeric    | 60.5       | Mean: 4.27, Range: 1.97 - 16.00                                        | Minimum size (in mm) at yolk sac absorption (complete depletion of egg ressources) |
| YOLK_SAC_ABSORBED_SIZE_MAX        | numeric    | 60.5       | Mean: 4.82, Range: 2.19 - 18.00                                        | Maximum size (in mm) at yolk sac absorption (complete depletion of egg ressources) |
| YOLK_SAC_ABSORBED_SIZE_CONF       | numeric    | 94.2       | Mean: 0.11, Range: 0.03 - 0.19                                         | Confidence interval (in mm) associated with the mean size at yolk sac absorption |
| YOLK_SAC_ABSORBED_SIZE_MEAN_TYPE  | categorical| 13.2       | Categories: mean; midrange                                              | Indicates whether the mean size at yolk sac absorption is a real mean or a midrange computed from min/max values |
| YOLK_SAC_ABSORBED_SIZE_CONF_TYPE  | categorical| 94.2       | Categories: SD                                                          | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |

---



## Age at flexion database
This species-level database tracks the timing of flexion, which corresponds to upward notochord bending associated with the ossification of fins. It includes rearing temperature data and details about the flexion process.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                         | character  | 82.6       |                                                                         | Number of individuals measured for age at flexion                           |
| REARING_TEMPERATURE_MEAN  | numeric    | 36.2       | Mean: 24.55, Range: 5.50 - 29.50                                       | Mean (or midrange) temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MIN   | numeric    | 38.6       | Mean: 23.67, Range: 5.00 - 29.50                                       | Minimum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MAX   | numeric    | 52.7       | Mean: 25.95, Range: 6.00 - 33.20                                       | Maximum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MEAN_TYPE | categorical| 36.2       | Categories: mean; midrange                                              | Indicates whether the mean rearing temperature is a real mean or a midrange computed from min/max values |
| FLEXION_INFOS             | categorical| 72.5       | Categories: Age at the end of flexion; Age at the start of flexion; etc. | Whether the age range corresponds to the start and/or end of flexion or the minimum and maximum ages across transforming individuals |
| FLEXION_AGE_DPH_MEAN      | numeric    | 0          | Mean: 15.17, Range: 0.00 - 52.50                                       | Mean (or midrange) age (in days post-hatch) at flexion (upward notochord bending associated with the ossification of fins) |
| FLEXION_AGE_DPH_MIN       | numeric    | 50.2       | Mean: 13.05, Range: 2.00 - 49.00                                       | Minimum age (in days post-hatch) at flexion (upward notochord bending associated with the ossification of fins) |
| FLEXION_AGE_DPH_MAX       | numeric    | 50.2       | Mean: 18.47, Range: 5.00 - 60.00                                       | Maximum age (in days post-hatch) at flexion (upward notochord bending associated with the ossification of fins) |
| FLEXION_AGE_DPH_MEAN_TYPE | categorical| 0          | Categories: mean; midrange                                              | Indicates whether the mean age at flexion is a real mean or a midrange computed from min/max values |

---



## Size at flexion database
This species-level database records the size of larvae at notochord flexion (see definition above), along with rearing temperature data and details about the flexion process.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                         | character  | 96.9       |                                                                         | Number of individuals measured for size at flexion                          |
| LENGTH_TYPE               | categorical| 2.4        | Categories: NL; SL; TL                                                  | Type of length measurement: NL (Notochord Length), SL (Standard Length), or TL (Total Length) |
| REARING_TEMPERATURE_MEAN  | numeric    | 94.1       | Mean: 24.09, Range: 5.50 - 30.24                                       | Mean (or midrange) temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MIN   | numeric    | 95.2       | Mean: 22.95, Range: 5.00 - 30.20                                       | Minimum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MAX   | numeric    | 95.2       | Mean: 25.42, Range: 6.00 - 33.20                                       | Maximum temperature (in °C) during the monitored larval period for rearing studies |
| REARING_TEMPERATURE_MEAN_TYPE | categorical| 94.1       | Categories: mean; midrange                                              | Indicates whether the mean rearing temperature is a real mean or a midrange computed from min/max values |
| FLEXION_INFOS             | categorical| 89.4       | Categories: Size at the end of flexion; Size at the start of flexion; etc. | Whether the size range corresponds to the start and/or end of flexion or the minimum and maximum sizes across transforming individuals |
| FLEXION_PARTICULARITY     | categorical| 96.7       | Categories: Does not occur; Flexion before hatching                   | Indicates any particularities related to flexion, such as its absence or occurrence before hatching |
| FLEXION_SIZE_MEAN         | numeric    | 0.4        | Mean: 7.49, Range: 2.00 - 32.00                                        | Mean (or midrange) size (in mm) at flexion (upward notochord bending associated with the ossification of fins) |
| FLEXION_SIZE_MIN          | numeric    | 31.5       | Mean: 6.37, Range: 2.00 - 28.00                                        | Minimum size (in mm) at flexion (upward notochord bending associated with the ossification of fins) |
| FLEXION_SIZE_MAX          | numeric    | 31.5       | Mean: 8.83, Range: 2.80 - 52.10                                        | Maximum size (in mm) at flexion (upward notochord bending associated with the ossification of fins) |
| FLEXION_SIZE_CONF         | numeric    | 99.1       | Mean: 0.21, Range: 0.01 - 0.66                                         | Confidence interval (in mm) associated with the mean size at flexion        |
| FLEXION_SIZE_MEAN_TYPE    | categorical| 0.4        | Categories: mean; midrange                                              | Indicates whether the mean size at flexion is a real mean or a midrange computed from min/max values |
| FLEXION_SIZE_CONF_TYPE    | categorical| 99.1       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |

---



## Metamorphosis age/duration database
This species-level database documents the timing and duration of metamorphosis, which is the transition from larval to juvenile stage. This process largely varies among fish families, but is often characterized by the appearance of scales, the growth of all fin spines/rays to reach the adult count, the acquisition of juvenile coloration, and/or the loss of specialized larval attributes (criteria used by authors were sometimes reported in `MET_DEFINITION`.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                         | character  | 85.7       |                                                                         | Number of individuals measured for metamorphosis age or duration            |
| ORIGIN                    | categorical| 0          | Categories: Reared; Wild                                                | Indicates whether the data comes from reared individuals or wild-caught specimens |
| REARING_TEMPERATURE_MEAN  | numeric    | 43.5       | Mean: 22.69, Range: 3.00 - 32.00                                       | Mean (or midrange) temperature (in °C) from hatching to metamorphosis for rearing studies studies |
| REARING_TEMPERATURE_MIN   | numeric    | 71.7       | Mean: 22.14, Range: 0.00 - 30.20                                       | Minimum temperature (in °C) from hatching to metamorphosis for rearing studies |
| REARING_TEMPERATURE_MAX   | numeric    | 71.7       | Mean: 25.07, Range: 6.00 - 34.00                                       | Maximum temperature (in °C) from hatching to metamorphosis for rearing studies |
| REARING_TEMPERATURE_MEAN_TYPE | categorical| 43.5       | Categories: mean; midrange                                              | Indicates whether the mean rearing temperature is a real mean or a midrange computed from min/max values |
| MET_DEFINITION            | character  | 96.6       |                                                                         | Description or criteria used to define metamorphosis in the study (25 values) |
| MET_AGE_INFOS             | categorical| 51.4       | Categories: Age at the end of metamorphosis; Age at the start of metamorphosis; etc. | Whether the age range corresponds to the start and/or end of metamorphosis or the minimum and maximum ages across transforming individuals |
| MET_AGE_DPH_MEAN          | numeric    | 4.1        | Mean: 46.60, Range: 0.00 - 350.20                                      | Mean (or midrange) age (in days post-hatch) at metamorphosis (transformation from larvae to juvenile) |
| MET_AGE_DPH_MIN           | numeric    | 56.7       | Mean: 40.81, Range: 7.00 - 274.00                                      | Minimum age (in days post-hatch) at metamorphosis (transformation from larvae to juvenile) |
| MET_AGE_DPH_MAX           | numeric    | 56.7       | Mean: 59.52, Range: 8.00 - 365.00                                      | Maximum age (in days post-hatch) at metamorphosis (transformation from larvae to juvenile) |
| MET_AGE_DPH_CONF          | numeric    | 93.2       | Mean: 12.78, Range: 0.30 - 40.43                                       | Confidence interval (in days) associated with the mean age at metamorphosis |
| MET_AGE_MEAN_TYPE         | categorical| 4.1        | Categories: mean; midrange                                              | Indicates whether the mean age at metamorphosis is a real mean or a midrange computed from min/max values |
| MET_AGE_CONF_TYPE         | categorical| 93.3       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| MET_DURATION_MEAN_TYPE    | categorical| 90.7       | Categories: mean; midrange                                              | Indicates whether the mean duration of metamorphosis is a real mean or a midrange computed from min/max values |
| MET_DURATION_MEAN         | numeric    | 90.7       | Mean: 16.54, Range: 0.25 - 97.50                                       | Mean (or midrange) duration (in days) of the metamorphosis process (from the start to the end) |
| MET_DURATION_MIN          | numeric    | 97.3       | Mean: 23.47, Range: 3.00 - 77.00                                       | Minimum duration (in days) of the metamorphosis process (from the start to the end) |
| MET_DURATION_MAX          | numeric    | 97.3       | Mean: 46.24, Range: 5.00 - 119.94                                      | Maximum duration (in days) of the metamorphosis process (from the start to the end) |

---



## Size at metamorphosis database
This species-level database records the size of fish at metamorphosis, along with rearing temperature data and details about the metamorphosis process (see the definition of metamorphosis above).

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                         | character  | 96.3       |                                                                         | Number of individuals measured for size at metamorphosis                    |
| ORIGIN                    | categorical| 0          | Categories: Reared; Wild                                                | Indicates whether the data comes from reared individuals or wild-caught specimens |
| LENGTH_TYPE               | categorical| 11.9       | Categories: SL; TL                                                      | Type of length measurement: SL (Standard Length), or TL (Total Length)    |
| REARING_TEMPERATURE_MEAN  | numeric    | 81.4       | Mean: 21.99, Range: 3.00 - 32.00                                       | Mean (or midrange) temperature (in °C) during rearing from hatching to metamorphosis |
| REARING_TEMPERATURE_MIN   | numeric    | 92         | Mean: 22.25, Range: 5.00 - 30.20                                       | Minimum temperature (in °C) during rearing from hatching to metamorphosis  |
| REARING_TEMPERATURE_MAX   | numeric    | 92         | Mean: 24.80, Range: 6.00 - 33.20                                       | Maximum temperature (in °C) during rearing from hatching to metamorphosis  |
| REARING_TEMPERATURE_MEAN_TYPE | categorical| 81.4       | Categories: mean; midrange                                              | Indicates whether the mean rearing temperature is a real mean or a midrange computed from min/max values |
| MET_PARTICULARITY         | character  | 98.5       |                                                                         | Miscellaneous information about metamorphosis definition, metamorphosis process, or its link with settlement (17 values) |
| MET_SIZE_INFOS            | categorical| 84.1       | Categories: Size at the end of metamorphosis; Size at the start of metamorphosis; etc. | Describes the specific stage or range of metamorphosis for which size is reported |
| MET_SIZE_MEAN             | numeric    | 0.1        | Mean: 26.84, Range: 3.00 - 260.00                                      | Mean (or midrange) size (in mm) at metamorphosis (transformation from larvae to juvenile) |
| MET_SIZE_MIN              | numeric    | 44.9       | Mean: 22.51, Range: 2.00 - 228.00                                      | Minimum size (in mm) at metamorphosis (transformation from larvae to juvenile) |
| MET_SIZE_MAX              | numeric    | 44.9       | Mean: 31.63, Range: 5.00 - 371.00                                      | Maximum size (in mm) at metamorphosis (transformation from larvae to juvenile) |
| MET_SIZE_CONF             | numeric    | 97.1       | Mean: 1.40, Range: 0.01 - 5.50                                         | Confidence interval (in mm) associated with the mean size at metamorphosis  |
| MET_SIZE_MEAN_TYPE        | categorical| 0.1        | Categories: mean; midrange                                              | Indicates whether the mean size at metamorphosis is a real mean or a midrange computed from min/max values |
| MET_SIZE_CONF_TYPE        | categorical| 97.4       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |

---



## Age at settlement database
This species-level database records the age at settlement for benthic/demersal fishes, as it is the transition from a pelagic to a benthic lifestyle. Several other metadata columns provide insight into the sampling process, the settlement size, and the methodology used to characterize age, along with temperature. 

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                         | character  | 23.5       |                                                                         | Number of individuals measured for age at settlement                        |
| ORIGIN                    | categorical| 0          | Categories: Reared; Wild                                                | Indicates whether the data comes from reared individuals or wild-caught specimens |
| TEMPERATURE_MEAN          | numeric    | 98.7       | Mean: 19.96, Range: 6.00 - 30.00                                       | Mean (or midrange) temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MIN           | numeric    | 99.6       | Mean: 19.66, Range: 10.60 - 28.00                                      | Minimum temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MAX           | numeric    | 99.6       | Mean: 23.43, Range: 14.00 - 30.00                                      | Maximum temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MEAN_TYPE     | categorical| 98.8       | Categories: mean; midrange                                              | Indicates whether the mean temperature is a real mean or a midrange computed from min/max values |
| SAMPLING_DATES            | character  | 32.7       |                                                                         | Dates or period (dd/mm/yyyy or yyyy/mm/dd) during which sampling for settlement age was conducted (period bounds are separated by '-' while non-consecutive dates/periods are separated by '|) |
| START_DATE                | character  | 32.7       |                                                                         | Start date (yyyy-mm-dd) of the overall sampling period for settlement age  |
| END_DATE                  | character  | 32.7       |                                                                         | End date (yyyy-mm-dd) of the overall sampling period for settlement age    |
| LATITUDE                  | numeric    | 26.2       | Mean: 9.24, Range: -77.83 - 64.80                                      | Latitude (in decimal degrees) of the sampling location for settlement age  |
| LONGITUDE                 | numeric    | 26.2       | Mean: -2.24, Range: -176.26 - 178.86                                   | Longitude (in decimal degrees) of the sampling location for settlement age |
| ARTICLE_GPS_COORD         | logical    | 24.6       |                                                                         | Indicates whether GPS coordinates are those provided in the article or if they were inferred from the sampling location name |
| APPROX_GPS                | logical    | 26.3       |                                                                         | Indicates whether GPS coordinates are approximate (if they were estimated from sampling location name) |
| MARINE_ECOREGION          | categorical| 17.3       | Categories: CIP; CP; CP/CIP; EA; EP; NC; SC; WA; WIP                   | Marine ecoregion from Miller et al. (2018) where sampling for settlement age was conducted |
| LOCATION                  | character  | 17.9       |                                                                         | Specific location name(s) where settlement-stage fishes sampling was conducted |
| COUNTRY                   | character  | 17.9       |                                                                         | Country where sampling of settlement-stage fishes was conducted            |
| GEAR                      | character  | 41.8       |                                                                         | Gear used for sampling settlement-stages fishes, grouped in three main categories depending on life stages they are targeting (i.e., 'pre-settlement sampling', 'settlement sampling', and/or 'post-settlement sampling') |
| OTOLITH                   | categorical| 33.6       | Categories: lapillus; sagitta; sagitta & lapillus; sagitta, lapillus & asteriscus | Name of otolith pair used for age estimation at settlement                |
| SET_AGE_DPH_MEAN_TYPE     | categorical| 0          | Categories: mean; midrange                                              | Indicates whether the mean age at settlement is a real mean or a midrange computed from min/max values |
| SET_AGE_DPH_MEAN          | numeric    | 0          | Mean: 42.41, Range: 0.00 - 467.70                                      | Mean (or midrange) age (in days post-hatch) at settlement (benthic lifestyle transition) |
| SET_AGE_DPH_MIN           | numeric    | 33.2       | Mean: 33.57, Range: 6.50 - 334.00                                      | Minimum age (in days post-hatch) at settlement (benthic lifestyle transition) |
| SET_AGE_DPH_MAX           | numeric    | 33.2       | Mean: 46.22, Range: 9.00 - 416.00                                      | Maximum age (in days post-hatch) at settlement (benthic lifestyle transition) |
| SET_AGE_DPH_CONF          | numeric    | 49         | Mean: 3.99, Range: 0.00 - 53.00                                        | Confidence interval (in days) associated with the mean age at settlement   |
| SET_AGE_DPH_CONF_TYPE     | categorical| 49.2       | Categories: CI; CV; SD; SE                                              | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |

---



## Size at settlement database
This species-level database records the size of fish at settlement for benthic/demersal fishes, along with environmental and methodological metadata (see details above).

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                         | character  | 42.6       |                                                                         | Number of individuals measured for size at settlement                       |
| ORIGIN                    | categorical| 2.7        | Categories: Reared; Wild                                                | Whether settlement size was estimated from reared or wild individuals       |
| LENGTH_TYPE               | categorical| 7.8        | Categories: SL; TL                                                      | Type of length measurement: SL (Standard Length), or TL (Total Length)    |
| TEMPERATURE_MEAN          | numeric    | 96         | Mean: 21.62, Range: 5.50 - 30.00                                       | Mean (or midrange) temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MIN           | numeric    | 96.6       | Mean: 17.45, Range: 1.80 - 28.00                                       | Minimum temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MAX           | numeric    | 96.6       | Mean: 26.19, Range: 6.00 - 35.00                                       | Maximum temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MEAN_TYPE     | categorical| 96.2       | Categories: mean; midrange                                              | Indicates whether the mean temperature is a real mean or a midrange computed from min/max values |
| SAMPLING_DATES            | character  | 47.9       |                                                                         | Dates or period (dd/mm/yyyy or yyyy/mm/dd) during which sampling for settlement size was conducted (period bouds are separated by '-' while non-consecutive dates/periods are separated by '|) |
| START_DATE                | character  | 47.9       |                                                                         | Start date (yyyy-mm-dd) of the overall sampling period for settlement size |
| END_DATE                  | character  | 47.9       |                                                                         | End date (yyyy-mm-dd) of the overall sampling period for settlement size   |
| LATITUDE                  | numeric    | 41.5       | Mean: 2.08, Range: -77.83 - 57.22                                      | Latitude (in decimal degrees) of the sampling location for settlement size |
| LONGITUDE                 | numeric    | 41.5       | Mean: -30.03, Range: -176.26 - 178.72                                  | Longitude (in decimal degrees) of the sampling location for settlement size |
| ARTICLE_GPS_COORD         | logical    | 41.6       |                                                                         | Indicates whether GPS coordinates are those provided in the article or if they were inferred from the sampling location name |
| APPROX_GPS                | logical    | 41.6       |                                                                         | Indicates whether GPS coordinates are approximate (if they were estimated from sampling location name) |
| MARINE_ECOREGION          | categorical| 15.6       | Categories: CIP; CP; CP/CIP; EA; EP; NC; SC; WA; WIP; WP               | Marine ecoregion from Miller et al. (2018) where sampling for settlement age was conducted |
| LOCATION                  | character  | 16.5       |                                                                         | Specific location name(s) where settlement-stage fishes sampling was conducted |
| COUNTRY                   | character  | 20.6       |                                                                         | Country where sampling of settlement-stage fishes was conducted            |
| GEAR                      | character  | 22.7       |                                                                         | Gear used for sampling settlement-stages fishes, grouped in three main categories depending on life stages they are targeting (i.e., 'pre-settlement sampling', 'settlement sampling' and/or 'post-settlement sampling') |
| MAX_SIZE_PELAGIC_JUV      | logical    | 0          |                                                                         | Indicates whether the size information corresponds to the maximum length of pelagic juveniles (TRUE) or size directly obtained from settlement-stage fishes (FALSE) |
| SET_SIZE_MEAN             | numeric    | 0          | Mean: 25.11, Range: 3.50 - 751.00                                      | Mean (or midrange) size (in mm) at settlement (benthic lifestyle transition) |
| SET_SIZE_MIN              | numeric    | 64.7       | Mean: 19.88, Range: 0.85 - 561.00                                      | Minimum size (in mm) at settlement (benthic lifestyle transition)          |
| SET_SIZE_MAX              | numeric    | 64.7       | Mean: 26.80, Range: 4.00 - 720.00                                      | Maximum size (in mm) at settlement (benthic lifestyle transition)          |
| SET_SIZE_CONF             | numeric    | 80.4       | Mean: 2.60, Range: 0.00 - 64.73                                        | Confidence interval (in mm) associated with the mean size at settlement    |
| SET_SIZE_MEAN_TYPE        | categorical| 0          | Categories: mean; midrange                                              | Indicates whether the mean size at settlement is a real mean or a midrange computed from min/max values |
| SET_SIZE_CONF_TYPE        | categorical| 78.8       | Categories: CV; SD; SE                                                  | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |

---



## Pelagic juvenile stage database
This species-level database documents the possibility to extend the pelagic phase duration after the larval phase of benthic/demersal fishes. It also records the size and age of wild individuals sampled to determine this trait, along with the keyword used by authors to designate this stage. 

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| N                         | character  | 42.6       |                                                                         | Number of individuals measured for size at settlement                       |
| ORIGIN                    | categorical| 2.7        | Categories: Reared; Wild                                                | Whether settlement size was estimated from reared or wild individuals       |
| LENGTH_TYPE               | categorical| 7.8        | Categories: SL; TL                                                      | Type of length measurement: SL (Standard Length), or TL (Total Length)    |
| TEMPERATURE_MEAN          | numeric    | 96         | Mean: 21.62, Range: 5.50 - 30.00                                       | Mean (or midrange) temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MIN           | numeric    | 96.6       | Mean: 17.45, Range: 1.80 - 28.00                                       | Minimum temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MAX           | numeric    | 96.6       | Mean: 26.19, Range: 6.00 - 35.00                                       | Maximum temperature (in °C) during rearing (from hatching to settlement) or in the settlement zone for wild individuals |
| TEMPERATURE_MEAN_TYPE     | categorical| 96.2       | Categories: mean; midrange                                              | Indicates whether the mean temperature is a real mean or a midrange computed from min/max values |
| SAMPLING_DATES            | character  | 47.9       |                                                                         | Dates or period (dd/mm/yyyy or yyyy/mm/dd) during which sampling for settlement size was conducted (period bounds are separated by '-' while non-consecutive dates/periods are separated by '|) |
| START_DATE                | character  | 47.9       |                                                                         | Start date (yyyy-mm-dd) of the overall sampling period for settlement size |
| END_DATE                  | character  | 47.9       |                                                                         | End date (yyyy-mm-dd) of the overall sampling period for settlement size   |
| LATITUDE                  | numeric    | 41.5       | Mean: 2.08, Range: -77.83 - 57.22                                      | Latitude (in decimal degrees) of the sampling location for settlement size |
| LONGITUDE                 | numeric    | 41.5       | Mean: -30.03, Range: -176.26 - 178.72                                  | Longitude (in decimal degrees) of the sampling location for settlement size |
| ARTICLE_GPS_COORD         | logical    | 41.6       |                                                                         | Indicates whether GPS coordinates are those provided in the article or if they were inferred from the sampling location name |
| APPROX_GPS                | logical    | 41.6       |                                                                         | Indicates whether GPS coordinates are approximate (if they were estimated from sampling location name) |
| MARINE_ECOREGION          | categorical| 15.6       | Categories: CIP; CP; CP/CIP; EA; EP; NC; SC; WA; WIP; WP               | Marine ecoregion from Miller et al. (2018) where sampling for settlement age was conducted |
| LOCATION                  | character  | 16.5       |                                                                         | Specific location name(s) where settlement-stage fishes sampling was conducted |
| COUNTRY                   | character  | 20.6       |                                                                         | Country where sampling of settlement-stage fishes was conducted            |
| GEAR                      | character  | 22.7       |                                                                         | Gear used for sampling settlement-stages fishes, grouped in three main categories depending on life stages they are targeting (i.e., 'pre-settlement sampling', 'settlement sampling', and/or 'post-settlement sampling') |
| MAX_SIZE_PELAGIC_JUV      | logical    | 0          |                                                                         | Indicates whether the size information corresponds to the maximum length of pelagic juveniles (TRUE) or size directly obtained from settlement-stage fishes (FALSE) |
| SET_SIZE_MEAN             | numeric    | 0          | Mean: 25.11, Range: 3.50 - 751.00                                      | Mean (or midrange) size (in mm) at settlement (benthic lifestyle transition) |
| SET_SIZE_MIN              | numeric    | 64.7       | Mean: 19.88, Range: 0.85 - 561.00                                      | Minimum size (in mm) at settlement (benthic lifestyle transition)          |
| SET_SIZE_MAX              | numeric    | 64.7       | Mean: 26.80, Range: 4.00 - 720.00                                      | Maximum size (in mm) at settlement (benthic lifestyle transition)          |
| SET_SIZE_CONF             | numeric    | 80.4       | Mean: 2.60, Range: 0.00 - 64.73                                        | Confidence interval (in mm) associated with the mean size at settlement    |
| SET_SIZE_MEAN_TYPE        | categorical| 0          | Categories: mean; midrange                                              | Indicates whether the mean size at settlement is a real mean or a midrange computed from min/max values |
| SET_SIZE_CONF_TYPE        | categorical| 78.8       | Categories: CV; SD; SE                                                  | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |

---                                                                                                                                                    |



## Known rafting behaviour database
This species or genus-level database records observations of fishes associated with floating objects or organisms in the pelagic environment, which could largely increase their dispersal potential. It includes details about the floatsam type and the size/age of rafting individuals.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| LENGTH_TYPE               | categorical| 65.7       | Categories: FL; SL; TL                                                  | Type of length measurement: FL (Fork Length), SL (Standard Length), or TL (Total Length) |
| RANK                      | categorical| 0          | Categories: Genus; Species                                              | Taxonomic rank at which the rafting information is available (genus for unidentified or multiple species) |
| FLOATSAM                  | character  | 0.1        |                                                                         | Description of the floatsam associated with rafting behaviour. Categories are grouped (separated by '|') for the information reviewed by Castro et al. (2002). Here are the definition for the overall categories: 'algae/plant' (any plant/algae matter such as dead logs except mangrove litter), 'FAD' (man-made Fish Aggregating Device), 'gelatinous zooplankton' (any Cnidaria, Ctenophora or pelagic Tunicata), 'mangrove litter' (floating debris originating from mangroves), 'other object' (undefined category for some Castro et al. 2002 records), 'pelagic vertebrate', 'plastic' (except FAD) or 'tsunamis debris' (any object set drifting by a tsunami). |
| STAGE                     | character  | 25.7       |                                                                         | Life stage(s) associated with rafting behaviour (A = adult, J = juvenile, L = larvae). Multiple stages found associated to a floatsam are separated by '|' while uncertainties about stage identification are indicated by 'and/or'. |
| RAFTING_SIZE_MEAN         | numeric    | 65.6       | Mean: 76.58, Range: 2.50 - 1650.00                                     | Mean (or midrange) size (in mm) of individuals exhibiting rafting behaviour (association with an object/animal in the pelagic environment) |
| RAFTING_SIZE_MIN          | numeric    | 74.1       | Mean: 43.29, Range: 1.00 - 900.00                                      | Minimum size (in mm) of individuals exhibiting rafting behaviour (association with an object/animal in the pelagic environment) |
| RAFTING_SIZE_MAX          | numeric    | 74.1       | Mean: 126.03, Range: 5.10 - 2400.00                                    | Maximum size (in mm) of individuals exhibiting rafting behaviour (association with an object/animal in the pelagic environment) |
| RAFTING_SIZE_MEAN_TYPE    | categorical| 65.6       | Categories: mean; midrange                                              | Indicates whether the mean size of rafting individuals is a real mean or a midrange computed from min/max values |
| RAFTING_AGE               | character  | 99.3       |                                                                         | Age range or duration if specified (in days) associated with rafting behaviour |

---



## Vertical position (0-100m) database
This species, genus or family-level database documents the vertical distribution of fish larvae in the first 100m of the water column, standardized by sampling effort. Various other metadata about the stratified sampling protocol are provided.

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|-------------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| LATITUDE                      | character  | 0          |                                                                         | Latitude range (in decimal degrees) where stratified sampling was carried out |
| LONGITUDE                     | character  | 0          |                                                                         | Longitude range (in decimal degrees) where stratified sampling was carried out |
| LOCATION                      | character  | 0          |                                                                         | Specific location where stratified sampling was carried out                  |
| GEAR                          | character  | 0          |                                                                         | Gear or method used for stratified sampling                                  |
| RANK                          | categorical| 0          | Categories: Family; Genus; Species; Subfamily                           | Taxonomic rank of the vertical position data                                 |
| STAGE                         | categorical| 68.1       | Categories: Flexion; Post-flexion; Pre-flexion; Transforming           | Developmental stage(s) associated with vertical position data (before, during, or after notochord flexion) |
| PERIOD                        | categorical| 0          | Categories: Day; Night                                                 | Period (day or night) when stratified sampling was carried out         |
| ZONE                          | categorical| 0          | Categories: Nearshore (<5km from coast); Offshore (>5km from coast)    | Zone (nearshore or offshore) where stratified sampling was carried out      |
| POSITION_ISLAND               | categorical| 66         | Categories: Leeward; Windward                                          | Position relative to island (leeward or windward) where stratified sampling was carried out |
| FILTERED_VOLUME               | character  | 4          |                                                                         | Range of filtered water volume (cubic meter) by net during the overall stratified sampling campaign |
| BOTTOM_DEPTH                  | character  | 0          |                                                                         | Bottom depth (in meters) at the sampling location where stratified sampling was carried out |
| DEPTH_INTERVAL_CONSIDERED     | character  | 0          |                                                                         | All depth intervals (in meters) sampled during the overall stratified sampling campaign |
| N_CAPTURE                     | numeric    | 3.7        | Mean: 669.29, Range: 1.00 - 154629.00                                  | Number of individuals of the identified taxa sampled                        |
| MIN_DEPTH_CAPTURE             | numeric    | 0          | Mean: 13.69, Range: 0.00 - 90.50                                       | Minimum depth (in meters) at which individuals were captured                |
| MAX_DEPTH_CAPTURE             | numeric    | 0          | Mean: 68.43, Range: 1.00 - 125.00                                      | Maximum depth (in meters) at which individuals were captured                |
| WEIGHTED_MEAN_DEPTH_CAPTURE   | numeric    | 0          | Mean: 37.99, Range: 0.50 - 105.50                                      | Weighted mean depth (in meters) of capture, accounting for sampling effort (volume filtered) |
| WEIGHTED_SD_DEPTH_CAPTURE     | numeric    | 20.6       | Mean: 13.22, Range: 0.00 - 315.21                                      | Weighted standard deviation (in meters) of capture depth, accounting for sampling effort (volume filtered) |
| WEIGHTING_DETAILS             | categorical| 0          | Categories: Weighted by stantardized density (100m3); Weighted by stantardized density (ind/m2) | Details on how depth capture data was weighted                              |

---



## Critical swimming speed database
This species-level database records critical swimming speed (Ucrit) at or near the settlement stage of benthic/demersal fishes. Ucrit corresponds to laboratory measurements of short-term maximum speed in a swimming flume. Both absolute (cm per second) and relative (body length per second) swimming speeds are provided, the latter having been computed from the size of tested individuals 

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| ORIGIN                    | categorical| 0          | Categories: Reared; Wild                                                | Whether critical swimming speed was estimated from reared or wild individuals |
| LOCATION                  | character  | 0          |                                                                         | Location where critical swimming speed measurements were taken               |
| N                         | numeric    | 2.5        | Mean: 12.86, Range: 1.00 - 113.00                                      | Number of individuals measured for critical swimming speed                  |
| AGE_RANGE_DPH             | character  | 84.1       |                                                                         | Age range (in days post-hatch) of individuals during critical swimming speed measurements |
| STAGE                     | character  | 0          |                                                                         | Detailed information about the specific stage of individuals (settlement-stage or soon before/after) |
| TEMPERATURE_MEAN          | numeric    | 12.9       | Mean: 26.23, Range: 3.00 - 30.80                                       | Temperature range (in °C) during critical swimming speed measurements       |
| TEMPERATURE_MIN           | numeric    | 31.2       | Mean: 26.68, Range: 4.00 - 29.00                                       | Mean (or midrange) temperature (in °C) during critical swimming speed measurements |
| TEMPERATURE_MAX           | numeric    | 31.2       | Mean: 28.97, Range: 7.50 - 32.60                                       | Indicates whether temperature data is available for critical swimming speed measurements |
| TEMPERATURE_CONF          | numeric    | 96.5       | Mean: 1.42, Range: 0.40 - 3.28                                         | Confidence interval (in °C) associated with mean temperature during critical swimming speed measurements |
| TEMPERATURE_MEAN_TYPE     | categorical| 12.9       | Categories: mean; midrange                                              | Indicates whether the mean temperature is a real mean or a midrange computed from min/max values |
| TEMPERATURE_CONF_TYPE     | categorical| 96.5       | Categories: SD                                                          | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| LENGTH_TYPE               | categorical| 6.9        | Categories: SL (for relative speed: TL=SL*1.2); TL                      | Indicates the type of size measurement and any conversion factors used to get the relative speed |
| LENGTH_MEAN               | numeric    | 8.9        | Mean: 18.79, Range: 6.37 - 102.90                                      | Mean (or midrange) size (in mm) of individuals measured for critical swimming speed |
| LENGTH_MIN                | numeric    | 67.8       | Mean: 14.54, Range: 6.00 - 68.30                                       | Minimum size (in mm) of individuals measured for critical swimming speed    |
| LENGTH_MAX                | numeric    | 65.3       | Mean: 20.80, Range: 7.50 - 117.80                                      | Maximum size (in mm) of individuals measured for critical swimming speed    |
| LENGTH_CONF               | numeric    | 42.1       | Mean: 1.57, Range: 0.09 - 9.97                                         | Confidence interval (in mm) associated with mean size during critical swimming speed measurements |
| LENGTH_CONF_TYPE          | numeric    | 42.1       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| UCRIT_ABS_MEAN            | numeric    | 0.5        | Mean: 27.97, Range: 0.29 - 83.00                                       | Mean (or midrange) absolute critical swimming speed (laboratory measurement) in cm/s |
| UCRIT_ABS_MIN             | numeric    | 44.1       | Mean: 19.87, Range: 0.00 - 80.20                                       | Minimum absolute critical swimming speed (laboratory measurement) in cm/s    |
| UCRIT_ABS_MAX             | numeric    | 23.3       | Mean: 39.10, Range: 0.43 - 92.70                                       | Maximum absolute critical swimming speed (laboratory measurement) in cm/s    |
| UCRIT_ABS_CONF            | numeric    | 18.3       | Mean: 4.12, Range: 0.01 - 28.43                                        | Confidence interval (in cm/s) associated with mean absolute critical swimming speed |
| UCRIT_ABS_MEAN_TYPE       | categorical| 0.5        | Categories: mean; midrange; midrange of means; unique                  | Indicates how the critical swimming speed value was derived                 |
| UCRIT_ABS_RANGE_TYPE      | categorical| 24.3       | Categories: maximum; min-max; range of means minus SD                   | Indicates how the range of absolute critical swimming speeds was determined  |
| UCRIT_ABS_CONF_TYPE       | categorical| 18.3       | Categories: CI; SD; SE                                                  | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| UCRIT_REL_MEAN            | numeric    | 7.4        | Mean: 15.39, Range: 0.46 - 45.96                                       | Mean (or midrange) relative critical swimming speed (laboratory measurement) in body lengths per second |
| UCRIT_REL_MIN             | numeric    | 44.1       | Mean: 10.72, Range: 0.00 - 33.37                                       | Minimum relative critical swimming speed (laboratory measurement) in body lengths per second |
| UCRIT_REL_MAX             | numeric    | 26.7       | Mean: 22.56, Range: 0.67 - 61.17                                       | Maximum relative critical swimming speed (laboratory measurement) in body lengths per second |
| UCRIT_REL_CONF            | numeric    | 94.6       | Mean: 3.30, Range: 0.27 - 16.15                                        | Confidence interval (in body lengths per second) associated with mean relative critical swimming speed |
| UCRIT_REL_CONF_TYPE       | categorical| 94.6       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| REMARKS                   | character  | 0          |                                                                         | Remarks about measurement biases or relative swimming speed approximation   |

---



## In situ swimming speed database
This species-level database records In Situ Swimming speed (ISS) at or near the settlement stage of benthic/demersal fishes. ISS corresponds to in situ measurements of routine speed while scuba diving in the pelagic environment. Both absolute (cm per second) and relative (body length per second) swimming speeds are provided, the latter having been computed from the size of tested individuals 

| Variable                  | Type       | Missing values (%) | Summary                                                                 | Description                                                                 |
|---------------------------|------------|------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| ORIGIN                    | categorical| 0          | Categories: Reared; Wild                                                | Whether in situ swimming speed was estimated from reared or wild individuals |
| LOCATION                  | character  | 4.4        |                                                                         | Location where in situ swimming speed measurements were taken               |
| N                         | numeric    | 0          | Mean: 15.94, Range: 1.00 - 278.00                                      | Number of individuals measured for in situ swimming speed                  |
| AGE_RANGE_DPH             | character  | 98.9       |                                                                         | Age range (in days post-hatch) of individuals during in situ swimming speed measurements |
| STAGE                     | character  | 0          |                                                                         | Detailed information about the specific stage of individuals (settlement-stage or soon before/after) |
| TEMPERATURE_MEAN          | numeric    | 46.1       | Mean: 28.79, Range: 19.50 - 30.60                                      | Temperature range (in °C) during in situ swimming speed measurements       |
| TEMPERATURE_MIN           | numeric    | 46.1       | Mean: 27.39, Range: 19.00 - 30.30                                      | Mean (or midrange) temperature (in °C) during in situ swimming speed measurements |
| TEMPERATURE_MAX           | numeric    | 46.1       | Mean: 30.18, Range: 20.00 - 31.00                                      | Indicates whether temperature data is available for in situ swimming speed measurements |
| TEMPERATURE_CONF          | numeric    | 96.5       | Mean: 1.42, Range: 0.40 - 3.28                                         | Confidence interval (in °C) associated with mean temperature during in situ swimming speed measurements |
| TEMPERATURE_MEAN_TYPE     | categorical| 46.1       | Categories: midrange                                                    | Indicates whether the mean temperature is a real mean or a midrange computed from min/max values |
| TEMPERATURE_CONF_TYPE     | numeric    | 100        |                                                                         | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| LENGTH_TYPE               | categorical| 4.4        | Categories: SL (for relative speed: TL=SL*1.2); TL                      | Indicates the type of size measurement and any conversion factors used to get the relative speed |
| LENGTH_MEAN               | numeric    | 4.4        | Mean: 14.19, Range: 5.54 - 49.25                                       | Mean (or midrange) size (in mm) of individuals measured for in situ swimming speed |
| LENGTH_MIN                | numeric    | 51.1       | Mean: 12.14, Range: 6.00 - 28.90                                       | Minimum size (in mm) of individuals measured for in situ swimming speed    |
| LENGTH_MAX                | numeric    | 51.1       | Mean: 15.05, Range: 7.23 - 75.00                                       | Maximum size (in mm) of individuals measured for in situ swimming speed    |
| LENGTH_CONF               | numeric    | 77.2       | Mean: 0.82, Range: 0 - 4.6                                             | Confidence interval (in mm) associated with mean size during in situ swimming speed measurements |
| LENGTH_CONF_TYPE          | numeric    | 77.2       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| ISS_ABS_MEAN              | numeric    | 1.7        | Mean: 15.83, Range: 0.00 - 55.70                                       | Mean (or midrange) absolute in situ swimming speed (laboratory measurement) in cm/s |
| ISS_ABS_MIN               | numeric    | 42.8       | Mean: 9.16, Range: 0.00 - 36.80                                        | Minimum absolute in situ swimming speed (laboratory measurement) in cm/s    |
| ISS_ABS_MAX               | numeric    | 28.9       | Mean: 22.66, Range: 0.00 - 65.30                                       | Maximum absolute in situ swimming speed (laboratory measurement) in cm/s    |
| ISS_ABS_CONF              | numeric    | 30         | Mean: 2.91, Range: 0.10 - 14.13                                        | Confidence interval (in cm/s) associated with mean absolute in situ swimming speed |
| ISS_ABS_MEAN_TYPE         | categorical| 0          | Categories: mean; midrange; unique                                      | Indicates how the in situ swimming speed value was derived                  |
| ISS_ABS_RANGE_TYPE        | categorical| 27.2       | Categories: maximum; min-max; range of means                            | Indicates how the range of absolute in situ swimming speeds was determined  |
| ISS_ABS_CONF_TYPE         | categorical| 30         | Categories: range of SE; SD; SE                                         | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |
| ISS_REL_MEAN              | numeric    | 3.9        | Mean: 10.85, Range: 0.00 - 30.98                                       | Mean (or midrange) relative in situ swimming speed (laboratory measurement) in body lengths per second |
| ISS_REL_MIN               | numeric    | 73.3       | Mean: 4.80, Range: 0.00 - 22.53                                        | Minimum relative in situ swimming speed (laboratory measurement) in body lengths per second |
| ISS_REL_MAX               | numeric    | 72.8       | Mean: 9.97, Range: 0.00 - 32.57                                        | Maximum relative in situ swimming speed (laboratory measurement) in body lengths per second |
| ISS_REL_CONF              | numeric    | 86.1       | Mean: 3.96, Range: 0.50 - 8.80                                         | Confidence interval (in body lengths per second) associated with mean relative in situ swimming speed |
| ISS_REL_CONF_TYPE         | categorical| 86.1       | Categories: SD; SE                                                      | Indicates whether the confidence interval is a standard deviation (SD), a standard error (SE), a coefficient of variation (CV), or the mean difference between actual 95% confidence intervals with the mean (CI). In case the type was not indicated in the source article when given after "+/-", it was assumed to be an SD. |

---
