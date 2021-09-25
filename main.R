myData <- read.csv("data.csv")
str(myData)
myData$Name

# intro tidyverse
library(tidyverse)
myData <- read_csv("data.csv")
myData

# limiting table row view
salary <- 100:200
age <- seq(20, 50, length.out = 101)
my_data_2 <- data.frame(salary, age)  # takes the col name from vector
my_data_2 <- data.frame(data_salary = salary, data_age = age) # renames the col names
my_data_2

# converting to tbl
tbl <- as_tibble(my_data_2)
