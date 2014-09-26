# First Assignment
# ===============

# Load packages

# In case you do not have the magrittr package install it by running the 
# following command: install.packages('magrittr')
library(magrittr)

# In case you do not have the ggplot2 package install it by running the 
# following command: install.packages('ggplot2')
library(ggplot2)
#=======

### 3. Choose the data set

# See all the R core data sets available
data() 
# Load the core data set called infert
data(infert) 

### 4. Look at the data set
?infert
# Look at the names of the variables in the data set
names(infert) 
# Look at the first 6 observations (in a table)
head(infert[,]) 

### 5. Descriptive statistics: 

### Given that the data set looks at Infertility after Spontaneous and Induced 
### Abortion, the variables induced, spontaneous, age and parity are especially
### interesting to look at. for the descriptive statistics it is worth looking
### at frequency (histrograms), mean, quartiles and interquartile ranges, 
### median, variance and standard deviation, boxplots and distribution plots. 
### I additionally plotted the variables at the beginning to look at the 
### relationship between them.

# 5.1 Histograms 
hist(infert$induced, xlab="Number of Induced Abortions")
hist(infert$spontaneous, xlab="Number of Spontaneous Abortions")
hist(infert$age, xlab="Age (in years)")
hist(infert$parity, xlab="Parity (number of pregnancies for more than 24 weeks)")

# simple tables (to see if there are any NA's)
table(infert$induced)
table(infert$spontaneous)
table(infert$age)
table(infert$parity)

# categorizing age
infert$cat_age <- infert$age

infert$cat_age [infert$age %in% 21:25] <- 1
infert$cat_age [infert$age %in% 26:30] <- 2
infert$cat_age [infert$age %in% 31:35]<- 3
infert$cat_age [infert$age %in% 36:40] <- 4
infert$cat_age [infert$age %in% 41:45] <- 5

table(infert$cat_age)

# 5.a. Means
mean (infert$induced) 
mean (infert$spontaneous) 
mean (infert$age) 
mean (infert$parity)

# 5.b. Medium 
median (infert$induced) 
median (infert$spontaneous) 
median (infert$age) 
median (infert$parity)

# 5.d. Range
range(infert$induced) 
range(infert$spontaneous) 
range(infert$age) 
range(infert$parity)

# 5.e. Variance
var(infert$induced) 
var(infert$spontaneous) 
var(infert$age) 
var(infert$parity)

# 5.f. Standard deviation
sd(infert$induced) 
sd(infert$spontaneous) 
sd(infert$age) 
sd(infert$parity)

# 5.g. Quartiles & Interquartile Ranges
# Quartiles
summary(infert$induced)
summary(infert$spontaneous)
summary(infert$age) 
summary(infert$parity)

# Interquartile Ranges
IQR(infert$age)
IQR(infert$induced)
IQR(infert$spontaneous)
IQR(infert$age) 
IQR(infert$parity)

# create subset for spontaneous
indu1 <- subset(infert, induced == 1)
indu2 <- subset(infert, induced == 2)
indu0 <- subset(infert, induced == 0)

# 5.h. Box plots
boxplot(infert$age)
boxplot(indu0$age)
boxplot(indu1$age)
boxplot(indu2$age)

# create subset for spontaneous
spon1 <- subset(infert,spontaneous==1)
spon2 <- subset(infert,spontaneous==2)
spon0 <- subset(infert,spontaneous==0)

boxplot(spon0$age)
boxplot(spon1$age)
boxplot(spon2$age)

# 5.i. Summarise with Loess to look at the relation between age and parity
ggplot2::ggplot(infert, aes(age, parity)) + geom_point() + geom_smooth() + theme_bw()


# 7. Scatterplots ???

# 8. Bar Charts

# Bar Chart: induced abortions & education years
plot(indu0$education, xlab ='education')
plot(indu1$education, xlab ='education')
plot(indu2$education, xlab ='education')

# Bar Chart: spontaneous abortions & age - WARUM KEIN BARCHART?
plot(spon0$age, xlab ='age')
plot(spon1$age, xlab ='age')
plot(spon2$age, xlab ='age')

plot(infert$parity,infert$age)

# Bar Chart: induced abortions & parity - WARUM KEIN BARCHART?
plot(indu0$parity, xlab ='parity')
plot(indu1$parity, xlab ='parity')
plot(indu2$parity, xlab ='parity')

plot(infert$parity, xlab ='parity')


# 11. Joint Distributions
plot(indu0$parity, indu0$age)

