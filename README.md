FirstAssignment
===============


##### R version 3.1.1 (2014-07-10)

##### R Studio Version 0.98.1056 – © 2009-2013 RStudio, Inc.

##### Please report any bugs or suggestions at: https://github.com/NicolasatHertie/FirstAssignment/issues/6

# Task for the first Pair Assignment
### We need to create a new public GitHub repository

# To see all the R core data sets available
data() 

# To load the core data set called swiss
data(swiss) 

# To see the names of the variables in the data set
names(swiss) 

# To look at the observations (in a table)
head(swiss[1:3,1:4]) 

head(swiss[1:3,1:5])

head(swiss[1:3,2:6])

library(magrittr)

library(swiss)

install.packages(magrittr)

install.packages('dplyr')

library(magrittr)

rnorm(1000,mean = 10) %>% mean () %>% round (digits=2)
hist(swiss$Examination) # To produce a histogram showing frequency of examinations
fun_mean <- function (x=swiss$Examination) {
    sum(x) / length(x)
}
hist(swiss$Catholic)


