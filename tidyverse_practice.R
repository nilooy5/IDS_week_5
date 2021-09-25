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
tbl_3 <- tibble(
  a = lubridate::now() + runif(1e3) * 86400,
  b = lubridate::today() + runif(1e3) * 30,
  c = 1:1e3,
  d = runif(1e3),
  e = sample(letters, 1e3, replace=TRUE)
)

tbl_3
view(tbl_3)

tbl4 <- tibble(x = 1:3, y = 3:1)
tbl4
tbl4[,1:2]
class(tbl4[,1:2])
tbl4[,1]
class(tbl4[,1])
str(tbl4$x)

df5 <- data.frame(abc=1)
df5$a # will not produce error since it's not strict

tbl5 <- tibble(abc=1) # will produce error since no column is called "a"
tbl5$a