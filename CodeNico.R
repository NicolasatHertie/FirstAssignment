### 1. Working directory
setwd ('/Users/Nico/Documents/FirstAssignment')

### 2. Source each other's files
source ('/Users/Nico/Documents/FirstAssignment/data_final_Meilin.R')

### 3. Choose the data set

# See all the R core data sets available
data() 

# Load the core data set called women
data(women) 

# Look at the names of the variables in the data set
names(women) 

#  To look at the first 6 observations (in a table)
head(women[,]) 

### 5. Descriptive Statistics

### Given that the data set looks at the average heights and weights
### for American women aged 30 to 39, it is worth looking at the following
### descriptive statistics: mean, mode, medium, variance and standard deviation.
### The frequency is not providing useful information and the histogram is thus
### not very relevant.

# 1. Plot variables to observe potential links
plot(women$height,women$weight, xlab = 'Height',ylab = 'Weight')
plot(women, xlab = "Height (in)", ylab = "Weight (lb)",
     main = "women data: American women aged 30-39")

# 2. Mean
mean (women$height)
mean (women$weight)

# 3. Median
median(women$height)
median(women$weight)

# 4. Mode, quartiles and interquartile ranges 
summary(women$height)
summary(women$weight)
IQR(women$height)
IQR(women$weight)

# 5. Range and interquartile range
range(women$height)
range(women$weight)

# 6. Variance
var(women$height)
var(women$weight)

# 7. Standard deviation
sd(women$height)
sd(women$weight)

#  8. Boxplots
boxplot(women$height, main = 'Height')
boxplot(women$weight, main = 'Weight')

# 9. Summarise with loess

# In case you do not have the ggplot2 package install it by running the 
# following command: install.packages("ggplot2") 
library(ggplot2)

ggplot2::ggplot(women, aes(weight, height)) + geom_point() + geom_smooth() + theme_bw()

