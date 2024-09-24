library(baseR)
install.packages(baseR)
library(dplyr) ## working or use for table functions and organizationin excel
library(tidyverse)
library(tidyr)
library(ggplot2) ## creating plots
library(palmerpenguins) ## teaching data set


penguins_data <- penguins

write.csv(penguins_data,
          "data/penguins.csv",
          row.names = FALSE)

head(penguins)
str(penguins)

new_object <- penguins_data
head(penguins_data)

# Subsetting data

penguin_location <- penguins_data |>
  select (species, island)

penguins_ratio <- penguins_data
  