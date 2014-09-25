FirstAssignment
===============
===============

data() # This is how we see all the R core data sets available

data(swiss) # We load the core data set called swiss

names(swiss) # To see the names of the variables in the data set

head(swiss[1:3,1:4]) # To look at the observations (in a table)

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


