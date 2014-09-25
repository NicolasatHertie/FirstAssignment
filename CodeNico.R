# Set working directory
setwd ('/Users/Nico/Documents/FirstAssignment')

# Link to Meilin's file
source ('/Users/Nico/Documents/FirstAssignment/data_final_Meilin.R')

# To see all the R core data sets available
data() 

# To load the core data set called swiss
data(women) 

# To see the names of the variables in the data set
names(women) 

# To look at the observations (in a table)
head(women[,]) 

### Descriptive Statistics

### Given that the data set looks at gives the average heights and weights
### for American women aged 30???39, it is worth looking at the following
### descriptive statistics: mean, mode, medium, variance and standard deviation.
### The frequency is not providing useful information and the histogram is thus
### not very relevant.

# 1. Plot variables to observe potential links
plot(women$height,women$weight)

# 2. Mean
mean (women$height)
mean (women$weight)

# 3. Median
median(women$height)
median(women$weight)

# 4. Mode (check)

# 5. Range 
range(women$height)
range(women$weight)

# 6. Variance
var(women$height)
var(women$weight)

# 7. Standard deviation
sd(women$height)
sd(women$weight)

# 8. Quartiles
summary(women$height)
summary(women$weight)

boxplot(women$height, main = 'Height')
boxplot(women$weight, main = 'Weight')

