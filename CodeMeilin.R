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
head(infert[, ]) 

### 3. Descriptive statistics: 

### Given that the data set looks at Infertility after Spontaneous and Induced 
### Abortion, the variables induced, spontaneous, age and parity are especially
### interesting to look at. For the descriptive statistics it is worth looking
### at frequency (histrograms), mean, quartiles and interquartile ranges, 
### median, variance and standard deviation, boxplots and distribution plots. 

# 3.1 Histograms 
hist(infert$induced, xlab="Number of Induced Abortions")
hist(infert$spontaneous, xlab="Number of Spontaneous Abortions")
hist(infert$age, xlab="Age (in years)")
hist(infert$parity, xlab="Parity (number of pregnancies for more than 24 weeks)")

# 3.2 Simple Tables
table(infert$induced)
table(infert$spontaneous)
table(infert$age)
table(infert$parity)

# 3.3. Means
mean (infert$induced) 
mean (infert$spontaneous) 
mean (infert$age) 
mean (infert$parity)

# 3.4. Medians 
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

# 3.8. Quartiles
summary(infert$induced)
summary(infert$spontaneous)
summary(infert$age) 
summary(infert$parity)

# 3.9. Interquartile Ranges
IQR(infert$induced)
IQR(infert$spontaneous)
IQR(infert$age)
IQR(infert$parity)

# 3.10. Boxplots

# Boxplot for age
boxplot(infert$age, main = "Boxplot age")

# Create 3 subsets for the number of induced abortions
# indu0 is the subset of women with zero induced abortions
indu0 <- subset(infert, induced == 0)
# indu1 is the subset of women with one induced abortion
indu1 <- subset(infert, induced == 1)
# indu2 is the subset of women with two induced abortions
indu2 <- subset(infert, induced == 2)

# Boxplots for induced abortions
boxplot(indu0$age, main = "Boxplot age for women with zero induced abortions")
boxplot(indu1$age, main = "Boxplot age for women with one induced abortion")
boxplot(indu2$age, main = "Boxplot age for women with two induced abortions")

# Create 3 subsets for the number of spontaneous abortions
# spon0 is the subset of women with zero spontaneous abortions
spon0 <- subset(infert, spontaneous==0)
# spon1 is the subset of women with one spontaneous abortion
spon1 <- subset(infert, spontaneous==1)
# spon2 is the subset of women with one spontaneous abortion
spon2 <- subset(infert, spontaneous==2)

# Boxplots for spontaneous abortions
boxplot(spon0$age, main = "Boxplot age for women with zero spontaneous abortions")
boxplot(spon1$age, main = "Boxplot age for women with one spontaneous abortion")
boxplot(spon2$age, main = "Boxplot age for women with two spontaneous abortions")

# 3.11. Joint Distributions / Plots

# Number of spontaneous abortions & Age
plot(infert$spontaneous, infert$age, xlab="Number of Spontaneous Abortions", ylab="Age (in years)")

# Parity & Age
plot(infert$parity, infert$age,xlab="Parity (number of pregnancies 
for more than 24 weeks)", ylab="Age (in years)")

# Number of induced abortions & Parity
plot (infert$parity, infert$induced, xlab="Parity (number of pregnancies 
for more than 24 weeks)", ylab="Number of Induced Abortions")

# Number of spontaneous abortions & Parity
plot(infert$parity, infert$spontaneous , xlab="Parity (number of pregnancies 
for more than 24 weeks)", ylab="Number of Spontaneous Abortions")

# 3.12. Summarise with Loess

# Look at the relation between age and parity
ggplot2::ggplot(infert, aes(age,parity)) + geom_point() + geom_smooth() + theme_bw()

# Look at the relation between spontaneous abortions and parity
ggplot2::ggplot(infert, aes(parity,spontaneous)) + geom_point() + geom_smooth() + theme_bw()

# Look at the relation between induced abortions and parity
ggplot2::ggplot(infert, aes(parity,induced)) + geom_point() + geom_smooth() + theme_bw()



