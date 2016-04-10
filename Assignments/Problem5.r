setwd("D://Atul//RProgramming//Assignments")

crimesfd = read.csv("test.csv")
dim(crimesfd)
str(crimesfd)
crimesfd$Dates = as.Date(crimesfd$Dates)
crimesfd$Address = as.character(crimesfd$Address)
levels(crimesfd$PdDistrict)
levels(crimesfd$DayOfWeek)

crime_train = read.csv("train.csv")
str(crime_train)
dim(crime_train)
levels(crime_train$Descript)
crime_train$Dates = as.Date(crime_train$Dates)
levels(crime_train$Category)
crime_train$Address = as.character(crime_train$Address)

summary(crimesfd)
summary(crime_train)

