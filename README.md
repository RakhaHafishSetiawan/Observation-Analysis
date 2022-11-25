![Screenshot (365)](https://user-images.githubusercontent.com/102712597/194695224-43a37b3a-2316-4295-8bb8-7cf07ca56f87.png)


# Palmer-Penguins-Analysis
My data visualization project on the Palmer Penguins dataset by Allison Horst, Alison Hill, and Kristen Gorman. This visualization contains the information regarding the analysis of the population observation of the three penguin species.

# Tools
• R Language <br>
• Microsoft Power BI

# Data Transformation

## Required Libraries
These are the libraries that i used to transform the palmerpenguins dataset, both are from the tidyverse package. <br>
I used dplyr library to wrangle the data and the magrittr library for the ease of readability of the code.

```r
library(dplyr)
library(magrittr)
```

## Data Transformation Code
In this chunk of code, i piped in the data set into several different dplyr functions, 
the first function being the select function, because only needed four columns for the population observation analysis, 
the second function being the drop_na function, so that Power BI does not misvisualize my data, 
the third function being the combination of mutate and conditionals function, because i want to show the viewers of this repository 
about the conservation status of each observed species.

## Raw Data
```r
> tibble(penguins)
# A tibble: 344 × 9
   rowid species island    bill_length…¹ bill_…² flipp…³ body_…⁴ sex    year
   <int> <chr>   <chr>             <dbl>   <dbl>   <int>   <int> <chr> <int>
 1     1 Adelie  Torgersen          39.1    18.7     181    3750 male   2007
 2     2 Adelie  Torgersen          39.5    17.4     186    3800 fema…  2007
 3     3 Adelie  Torgersen          40.3    18       195    3250 fema…  2007
 4     4 Adelie  Torgersen          NA      NA        NA      NA NA     2007
 5     5 Adelie  Torgersen          36.7    19.3     193    3450 fema…  2007
 6     6 Adelie  Torgersen          39.3    20.6     190    3650 male   2007
 7     7 Adelie  Torgersen          38.9    17.8     181    3625 fema…  2007
 8     8 Adelie  Torgersen          39.2    19.6     195    4675 male   2007
 9     9 Adelie  Torgersen          34.1    18.1     193    3475 NA     2007
10    10 Adelie  Torgersen          42      20.2     190    4250 NA     2007
# … with 334 more rows, and abbreviated variable names ¹​bill_length_mm,
#   ²​bill_depth_mm, ³​flipper_length_mm, ⁴​body_mass_g
```
## R Script Code
```r
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
```
## Resultant
```r
# A tibble: 333 × 5
   species island    sex     year status        
   <chr>   <chr>     <chr>  <int> <chr>         
 1 Adelie  Torgersen male    2007 Near Threaten…
 2 Adelie  Torgersen female  2007 Near Threaten…
 3 Adelie  Torgersen female  2007 Near Threaten…
 4 Adelie  Torgersen female  2007 Near Threaten…
 5 Adelie  Torgersen male    2007 Near Threaten…
 6 Adelie  Torgersen female  2007 Near Threaten…
 7 Adelie  Torgersen male    2007 Near Threaten…
 8 Adelie  Torgersen female  2007 Near Threaten…
 9 Adelie  Torgersen male    2007 Near Threaten…
10 Adelie  Torgersen male    2007 Near Threaten…
# … with 323 more rows
```


