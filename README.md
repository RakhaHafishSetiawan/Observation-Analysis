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
In this chunk of code, i piped in the data set into several different dplyr functions, <br>
the first function being the select function, because only needed four columns for the population observation analysis, <br>
the second function being the drop_na function, so that Power BI does not misvisualise my data, <br>
the third function being the combination of mutate and conditionals function, because i want to show the user <br>
about the conservation status of each observed species.

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
```


