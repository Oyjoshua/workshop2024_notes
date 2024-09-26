library(palmerpenguins)
library(dplyr)

penguins <- penguins

head(penguins)

# Convert between metric and imperial measurements

# 39.1 mm in inches

39.1 * 0.03937008

mm_to_inches <- function(value_in_mm) {
  
  value_in_inches <- value_in_mm * 0.03937008
  
  return(value_in_inches)
  
}

penguins_with_inches <- penguins |>
  mutate(across(ends_with("mm"), mm_to_inches, .names = "{.col}_in"

penguins_rounded <- penguins |>
  mutate(across(ends_with("mm"), \(x) {round(x, digits = 1)}, .names = "{.col}_rounded"),
         across(ends_with("lb"), \(x) {round(x, digits = 2)}, .names = "{.col}_rounded"))

penguins_imperial <- penguins |>
  mutate(across(ends_with("mm"), mm_to_inches, .names = "{.col}_in"),
         across(ends_with("g"), g_to_lbs, .names = "{.col}_lb"))
`rlang::last_trace()
