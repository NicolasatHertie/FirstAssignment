FirstAssignment
===============


##### R version 3.1.1

##### R Studio Version 0.98.1056

##### Please report any bugs or suggestions at: https://github.com/NicolasatHertie/FirstAssignment/issues/6

# Task for the first Pair Assignment
### We need to create a new public GitHub repository

# To see all the R core data sets available
data() 

# To load the core data set called swiss
data(infert) 

# To see the names of the variables in the data set
names(infert) 

# To look at the observations (in a table)
head(infert[,]) 

### Descriptive Statistics

?infert

# 1. Histograms
hist(infert$induced)

hist(infert$education)

hist(infert$spontaneous)

hist(infert$age)

# 2. Means

mean (infert$education) # error because categorial

mean (infert$age, na.rm = TRUE) 
mean (infert$spontaneous, na.rm = TRUE) 
mean (infert$induced, na.rm = TRUE) 


# 3. Median

for (i in 1:length(names(infert))) {
infert[, i] %>%
median() %>%
round (digits = 1) %>%
paste (names (infert) [i], ., ', )

plot(infert$induced,infert$education)
plot(infert$induced,infert$age)
plot(infert$induced,infert$spontaneous)

plot(infert$induced,subset(infert$induced == 1)

?subset

induced1 <- subset(infert, induced == 1)
induced2 <- subset(infert, induced == 2)
induced0 <- subset(infert, induced == 0)

hist(subset1$age)

# bar chart
devtools: source_url ('http://bit.ly/OTWEGS')
plot(induced0$education, xlab ='education', ylab='frequency')
plot(induced1$education, xlab ='education', ylab='frequency')
plot(induced2$education, xlab ='education', ylab='frequency')

plot(induced0$age, xlab ='age', ylab='frequency')
plot(induced1$age, xlab ='age', ylab='frequency')
plot(induced2$age, xlab ='age', ylab='frequency')



# last thing: dynamically interlink R-Files: source (filepath)


[1] "education"      "age"            "parity"         "induced"       
[5] "case"           "spontaneous"    "stratum"        "pooled.stratum"

# 2. 
