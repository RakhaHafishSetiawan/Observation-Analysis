#Loaded the tidyverse library.
library(tidyverse)

#Removed irrelevant columns, NA values, and added status column
penguins %>%
  select(species, island, sex, year) %>%
  drop_na() %>%
  mutate(status = if_else(
    species == "Adelie",
    "Near Threatened",
    if_else(species == "Gentoo",
            "Near Threatened",
            "LeastConcerned")
  )) 