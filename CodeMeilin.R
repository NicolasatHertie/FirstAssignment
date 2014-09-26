# First Assignment - File 2
# ===============

### 1. Choose the data set

# See all the R core data sets available
data() 
# Load the core data set called infert
data(infert) 

### 2. Look at the data set
?infert
# Look at the names of the variables in the data set
names(infert) 
# Look at the first 6 observations (in a table)
head(infert[,]) 

### 3. Descriptive statistics: 

### Given that the data set looks at Infertility after Spontaneous and Induced 
### Abortion, the variables induced, spontaneous, age and parity are especially
### interesting to look at. for the descriptive statistics it is worth looking
### at frequency (histrograms), mean, quartiles and interquartile ranges, 
### median, variance and standard deviation, boxplots and distribution plots. 
### I additionally plotted the variables at the beginning to look at the 
### relationship between them.

# 3.1 Histograms 
hist(infert$induced, xlab="Number of Induced Abortions")
hist(infert$spontaneous, xlab="Number of Spontaneous Abortions")
hist(infert$age, xlab="Age (in years)")
hist(infert$parity, xlab="Parity (number of pregnancies for more than 24 weeks)")

# 3.2 Simple Tables (to see if there are any NA's)
table(infert$induced)
table(infert$spontaneous)
table(infert$age)
table(infert$parity)

# 3.3. Means
mean (infert$induced) 
mean (infert$spontaneous) 
mean (infert$age) 
mean (infert$parity)

# 3.4. Medium 
median (infert$induced) 
median (infert$spontaneous) 
median (infert$age) 
median (infert$parity)

# 3.5. Range
range(infert$induced) 
range(infert$spontaneous) 
range(infert$age) 
range(infert$parity)

# 3.6. Variance
var(infert$induced) 
var(infert$spontaneous) 
var(infert$age) 
var(infert$parity)

# 3.7. Standard deviation
sd(infert$induced) 
sd(infert$spontaneous) 
sd(infert$age) 
sd(infert$parity)

# 3.8. Quartiles & Interquartile Ranges
# Quartiles
summary(infert$induced)
summary(infert$spontaneous)
summary(infert$age) 
summary(infert$parity)

# 3.9. Interquartile Ranges
IQR(infert$age)
IQR(infert$induced)
IQR(infert$spontaneous)
IQR(infert$age) 
IQR(infert$parity)

# 3.10. Box plots

# Create subset for induced
indu1 <- subset(infert, induced == 1)
indu2 <- subset(infert, induced == 2)
indu0 <- subset(infert, induced == 0)

# Boxplots for induced abortions
boxplot(infert$age)
boxplot(indu0$age)
boxplot(indu1$age)
boxplot(indu2$age)

# Create subset for spontaneous
spon1 <- subset(infert,spontaneous==1)
spon2 <- subset(infert,spontaneous==2)
spon0 <- subset(infert,spontaneous==0)

# Boxplots for spontaneous abortions
boxplot(spon0$age)
boxplot(spon1$age)
boxplot(spon2$age)

# 3.11. Scatterplots and Bar Charts

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

# 3.12. Joint Distributions
plot(indu0$parity, indu0$age)

# 3.13. Summarise with Loess to look at the relation between age and parity
ggplot2::ggplot(infert, aes(age, parity)) + geom_point() + geom_smooth() + theme_bw()



