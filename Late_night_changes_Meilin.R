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

# Look at the dataset
?infert

# To see the names of the variables in the data set
names(infert) 

# To look at the observations (in a table)
head(infert[,]) 

### Descriptive Statistics

# look at variables

# simple tables
table(infert$induced)
table(infert$spontaneous)
table(infert$age)
table(infert$parity)
table(infert$eduction)

# categorizing age
infert$cat_age <- infert$age

infert$cat_age [infert$age %in% 21:25] <- 1
infert$cat_age [infert$age %in% 26:30] <- 2
infert$cat_age [infert$age %in% 31:35]<- 3
infert$cat_age [infert$age %in% 36:40] <- 4
infert$cat_age [infert$age %in% 41:45] <- 5

table(infert$cat_age)

# crosstables
table(infert$induced, infert$cat_age)
table(infert$spontaneous, infert$cat_age)
table(infert$parity, infert$cat_age)

# 1. Histograms
hist(infert$induced)
hist(infert$spontaneous)
hist(infert$age)
hist(infert$parity) # need to log???

# 2. Means
mean (infert$induced, na.rm=TRUE) 
mean (infert$spontaneous, na.rm=TRUE) 
mean (infert$age, na.rm=TRUE) 
mean (infert$parity, na.rm=TRUE)

# 3. Median
# Loop
for (i in 1:length(names(infert))) {infert[,i] %>% mean() %>% 
round(digits=1) %>% paste (names (infert) [i], ., '\n') %>% cat()} # ERROR???

#na.rm - indicating whether NA values should be stripped
median (infert$induced, na.rm=TRUE) 
median (infert$spontaneous, na.rm=TRUE) 
median (infert$age, na.rm=TRUE) 
median (infert$parity, na.rm=TRUE)

# 4. Mode (for nominal data)
summary(infert$education, na.rm=TRUE)

# 5. Range
range(infert$induced, na.rm=TRUE) 
range(infert$spontaneous, na.rm=TRUE) 
range(infert$age, na.rm=TRUE) 
range(infert$parity, na.rm=TRUE)

# 6. Quartiles
summary(infert$induced, na.rm=TRUE) 
summary(infert$spontaneous, na.rm=TRUE) 
summary(infert$age, na.rm=TRUE) 
summary(infert$parity, na.rm=TRUE)

# 7. Scatterplots ???

# 8. Bar Charts

# create subset for spontaneous
spon1 <- subset(infert,spontaneous==1)
spon2 <- subset(infert,spontaneous==2)
spon0 <- subset(infert,spontaneous==0)

# create subset for spontaneous
indu1 <- subset(infert, induced == 1)
indu2 <- subset(infert, induced == 2)
indu0 <- subset(infert, induced == 0)


# Bar Chart: induced abortions & education years
devtools: source_url ('http://bit.ly/OTWEGS')
plot(indu0$education, xlab ='education')
plot(indu1$education, xlab ='education')
plot(indu2$education, xlab ='education')

# Bar Chart: spontaneous abortions & age - WARUM KEIN BARCHART?
plot(spon0$age, xlab ='age')
plot(spon1$age, xlab ='age')
plot(spon2$age, xlab ='age')

# Bar Chart: induced abortions & parity - WARUM KEIN BARCHART?
plot(indu0$parity, xlab ='parity')
plot(indu1$parity, xlab ='parity')
plot(indu2$parity, xlab ='parity')

plot(infert$parity, xlab ='parity')

# 9. Boxplots

boxplot(infert$age)
boxplot(indu0$age)
boxplot(indu1$age)
boxplot(indu2$age)

boxplot(spon0$age)
boxplot(spon1$age)
boxplot(spon2$age)

# 10. Interquartile Range
IQR(infert$age)

# 11. Joint Distributions
plot(indu0$parity, indu0$age)

install.packages('ggplot2')
library(ggplot2)
ggplot2::ggplot(infert, aes(log(education), 
induced geom_point() + geom_smooth() + theme_bw()
library(devtools)

ggplot2: :ggplot(induced1,aes(age,education)) + geom_point() + geom_smooth() + theme_bw()

boxplot(infert$age, main='% of ')

source('/Users/Meilin/Downloads/FirstAssignment/tryingsource.R')


plot(spon2$age, spon2$spontaneous)
plot(spon2$age)
infert$parity

plot(infert$age,infert$parity)
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

devtools: source_url ('http://bit.ly/OTWEGS')
plot(induced0$age, xlab ='age', ylab='frequency')
plot(induced1$age, xlab ='age', ylab='frequency')
plot(induced2$age, xlab ='age', ylab='frequency')

ggplot2: :ggplot(induced1,aes(age,education)) + geom_point() + geom_smooth() + theme_bw()

boxplot(infert$age, main='% of ')

source('/Users/Meilin/Downloads/FirstAssignment/tryingsource.R')

?summary


# last thing: dynamically interlink R-Files: source (filepath)

source

?source

[1] "education"      "age"            "parity"         "induced"       
[5] "case"           "spontaneous"    "stratum"        "pooled.stratum"

# 2. 
