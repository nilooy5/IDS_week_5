if(!("tidyverse" %in% rownames(installed.packages()))) {
  install.packages("tidyverse")
}

library("tidyverse")

as_tibble(iris)

# another way to create a tibble
tbl_1 <- tibble(x=1:5,
                y=1,  # recycling feature is allowed in a column
                z=x^2+y)
tbl_1

# transposed tibble; "tribble"
tbl_2 <- tribble(
  ~x, ~y, ~z,
  "a", 2, 3.6,
  "b", 1, 8.5
)

tbl_2