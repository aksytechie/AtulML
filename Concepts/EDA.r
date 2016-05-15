setwd("D://Atul//RProgramming//Concepts")

#Numerical Analysis
#outlier ( a data point not in sync with the rest of the data)
#Centre of data, mean, median
# a mean cannot really give you the centre of the data if the outlier is present, however a
# median can definately help out, moreover, two datasets can have the same mean
age = c(28,7,11,55,23,46,41)
mean(age)
mean(age,na.rm = T)
sort(age)
median(age)
median(age,na.rm=T)

test_Col = factor(c(rep("M",10),rep("F",5)))
# the following ma help in calcualting the mode
sum(test_Col == "M")
sum(test_Col == "F")
#Spread of data: talks about how the values are distributed in the data
#Inter Quartile Range see notes
# What is a quartile, sort it divide it into four parts and give the 1st,2nd and 3rd quartile
# variance and SD
age2 = c(28,7,15,10,20,25,17)
mean(age2)
mean((17.5-age2)^2) #variance
sqrt(mean((17.5-age2)^2))  #SD = sqrt(variance)
mean((abs(17.5-age2))) # Mean absolute deviation
sd(age2) # the reason it gives different values is because division by n-1, degrees of freedom
var(age2)
quantile(age2)
age2
summary(age2)

# histogram : the old school stuff
# Box-whisker plot : the quartile thing studied while GRE
# ggplot, only works on data frames

agedf = data.frame(age,age2)
ggplot(agedf) + geom_boxplot(aes(x=factor(0),y = age)) + coord_flip()
# the thick line is the median, the vertical line are called whiskers
# outliers are shown as dots in the graph long the whickers
# Q3 + 1.5 * IQR, the boudary for the outlier I guess,
# the ends of the whiskers give the boudaries for the ouliers
age5 = c(1 ,13,17,14,15,16,13,20,19,15,19,11)


ggplot(titanic_train) + geom_histogram(aes(x=titanic_train$Age))
ggplot(titanic_train) +  geom_boxplot(aes(x=factor(0),y=titanic_train$Age)) + coord_flip()
#Moments of data


#numerical vs Numnerical

#scatter plot: plot description of two data sets in graphical manner
library(ggplot2)
stock_ibm = c(10,20,30,40)
stock_accenture = c(5,10,15,20)
stock_ms = c(40,30,20,10)

plot(stock_ibm,stock_accenture)

stocks = data.frame(stock_ibm,stock_accenture,stock_ms)

ggplot(stocks) + geom_point(aes(x=stock_ibm,y=stock_ms))
# line like this '\' inverse relaitionship and'/' negative relationship

mean((stock_ibm-mean(stock_ibm))*(stock_ms-mean(stock_ms)))
#125
mean((stock_ibm-mean(stock_ibm))*(stock_accenture-mean(stock_accenture)))
#62.5

cov(stock_ms,stock_ibm)
cov(stock_ibm,stock_accenture)

cor(stock_ms,stock_ibm)
cor(stock_ibm,stock_accenture)
#covariance helps to understand the direction of a relationship whethere postive or negative, 
#however, the strength of relationship cannot be deteremined
# in covariance, we do not the units of the two quantites being compared and hence we cannot really
#calcualate the degree of the relation
# while taking z scores, we take in SD units and that can be used to obtain CORRELATION
#using zscore i.e value-mean/SD
# hence corrlation = covarince/(SD1 * SD2)
# correlation lies between from -1 to 1
# correlation measures only linear relationships
summary(stocks)


#categorical vs categorical

coin_toss1 = c(50,50)
chisq.test(coin_toss1)

coin_toss2 = c(49,51)
chisq.test(coin_toss2)

dice1 = c(10,10,10,10,10,10)
chisq.test(dice1)

dice2 = c(10,30,10,30,20,20)
chisq.test(dice2)
#p-value is knd of measure of fairness of the test. should not be less than 0.05, 5% deviation is accepted
# p-valuse less than 0.05 we accept alterante hypothesis, greater than 0.05 null hypothesis

dice3 = c(20,19,20,19,20,20)
chisq.test(dice3)

#observed data, expected data, 

install.packages("Amelia")
#numeric vs categorical
#Check the notes for more information, Check previous years codes for syntaxes
