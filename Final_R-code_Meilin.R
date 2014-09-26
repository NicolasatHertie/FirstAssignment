FirstAssignment
===============


##### R version 3.1.1

##### R Studio Version 0.98.1056

##### Please report any bugs or suggestions at: https://github.com/NicolasatHertie/FirstAssignment/issues/6

# Task for the first Pair Assignment
### We need to create a new public GitHub repository
  
# 1. Working directory

# 2. Source each other's file
source('/Users/Meilin/Downloads/FirstAssignment/tryingsource.R')

# 3.Identify the data set

# See all the R core data sets available
data() 

# Load the core data set called swiss
data(infert) 

# 4. Look at the data set

# Look at the dataset
?infert

# See the names of the variables in the data set
names(infert) 

# Look at the observations (in a table)
head(infert[,]) 

### 5. Descriptive statistics: 

# 5.i. Histogram 

#5.ii. Plot the variables 5.a. 

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

# 5.a. Mean
mean (infert$induced, na.rm=TRUE) 
mean (infert$spontaneous, na.rm=TRUE) 
mean (infert$age, na.rm=TRUE) 
mean (infert$parity, na.rm=TRUE)

# 5.b. Medium 
# Loop
for (i in 1:length(names(infert))) {infert[,i] %>% mean() %>% 
round(digits=1) %>% paste (names (infert) [i], ., '\n') %>% cat()} # ERROR???

#na.rm - indicating whether NA values should be stripped
median (infert$induced, na.rm=TRUE) 
median (infert$spontaneous, na.rm=TRUE) 
median (infert$age, na.rm=TRUE) 
median (infert$parity, na.rm=TRUE)

# 5.c. Mode (for nominal data)
summary(infert$education, na.rm=TRUE)

# 5.d. Range
range(infert$induced, na.rm=TRUE) 
range(infert$spontaneous, na.rm=TRUE) 
range(infert$age, na.rm=TRUE) 
range(infert$parity, na.rm=TRUE)

# 5.e. Variance
var(infert$induced, na.rm=TRUE) 
var(infert$spontaneous, na.rm=TRUE) 
var(infert$age, na.rm=TRUE) 
var(infert$parity, na.rm=TRUE)
var(infert$education, na.rm=TRUE) # sense with nominal data?

# 5.f. Standard deviation
sd(infert$induced, na.rm=TRUE) 
sd(infert$spontaneous, na.rm=TRUE) 
sd(infert$age, na.rm=TRUE) 
sd(infert$parity, na.rm=TRUE)
sd(infert$education, na.rm=TRUE) # sense with nominal data?

# 5.g. Quartiles
summary(infert$induced, na.rm=TRUE) # sense?
summary(infert$spontaneous, na.rm=TRUE) # sense?
summary(infert$age, na.rm=TRUE) 
summary(infert$parity, na.rm=TRUE)

IQR(infert$age)
IQR(infert$induced, na.rm=TRUE) # sense?
IQR(infert$spontaneous, na.rm=TRUE) # sense?
IQR(infert$age, na.rm=TRUE) 
IQR(infert$parity, na.rm=TRUE)

# 5.h. Box plots
boxplot(infert$age)
boxplot(indu0$age)
boxplot(indu1$age)
boxplot(indu2$age)

boxplot(spon0$age)
boxplot(spon1$age)
boxplot(spon2$age)

# 5.i. Summarise with Loess

# In case you do not have the ggplot2 package install it by running the 
# following command: install.packages('ggplot2')
library(ggplot2)

# Look at the relation between age and parity
ggplot2::ggplot(infert, aes(age, parity)) + geom_point() + geom_smooth() + theme_bw()


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


# 11. Joint Distributions
plot(indu0$parity, indu0$age)


# Other stuff
plot(spon2$age, spon2$spontaneous)
plot(spon2$age)
infert$parity

plot(infert$age,infert$parity)
plot(infert$induced,infert$age)
plot(infert$induced,infert$spontaneous)

