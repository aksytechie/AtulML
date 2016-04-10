titanic_test = read.csv("test.csv")
head(titanic_test)
tail(titanic_test)
str(titanic_test)
dim(titanic_test)
getwd()
setwd("D:\\Atul\\RProgramming")

# Marking all the passengers as survived
titanic_test$Survived = rep(0, nrow(titanic_test))

result = titanic_test[,c("PassengerId", "Survived")]
tail(result)
head(result)
write.csv(result, "submission.csv",row.names = FALSE,col.names = TRUE)

# Marking passengers as survived on the basis of chance Random Prediciton
# This is how random works
# Setting seed value to get the same set of random numbers again
set.seed(100)
runif(1)
ifelse(runif(1)<=0.5,"heads","tail")
titanic_test = read.csv("test.csv")
dim(titanic_test)
# Run the following two lines together to make the seed work for the each line
set.seed(100)
survived = runif(nrow(titanic_test))

tail(survived)
head(survived)
titanic_test$Survived = ifelse (survived<=0.5,0,1)
result = titanic_test[,c("PassengerId", "Survived")]
tail(result)
head(result)
write.csv(result, "submission.csv",row.names = FALSE,col.names = TRUE)
# No Improvement over the previous submission
# Making a rough logic, if the PClass is 1 then mark it as survived
titanic_test = read.csv("test.csv")
for(i in 1:nrow(titanic_test)) 
  { titanic_test[i,12]=ifelse(titanic_test[i,"Pclass"] == 1,1,0)}
  
tail(titanic_test[,12])

nrow(titanic_test)
ncol(titanic_test)
names(titanic_test)
# How to rename a column
result = titanic_test[,c("PassengerId", "V12")]
tail(result)
head(result)
write.csv(result, "submission.csv",row.names = FALSE,col.names = TRUE)
setwd("D:\\Atul\\RProgramming")
str(titanic_test)

## Clustering, Feature reduction, outlier detection, frequent patterning(DEscriptiive analysis)
# Coming to the factor data strucutre similar to enums
f1=factor(c(rep("M",5),rep("F",5)),levels=c("M","F"))
f2=factor(c(rep("M",5),rep("F",5)))
f1[1]
f2[1]
as.integer(f1)
as.integer(f2)
levels(f1)
levels(f2)



# Forcefull performing the casting, as some columns aer not correctly inferred from file

titanic_test = read.csv("test.csv")
titanic_test$Pclass=as.factor(titanic_test$Pclass)
str(titanic_test$Pclass)
titanic_test$Name = as.character(titanic_test$Name)
titanic_test$Sex = as.factor(titanic_test$Sex)
str(titanic_test$Sex)
(titanic_test$Pclass)
(titanic_test$Sex)
class(titanic_test$Sex)
as.integer(titanic_test$Sex)
levels(titanic_test$Sex)
levels(titanic_test$Pclass)
titanic_test$Sex
titanic_test$Pclass

dim(titanic_test)
str(titanic_test)

tmp = numeric(nrow(titanic_test))
for(i in 1:nrow(titanic_test)) {
  if(titanic_test[i,"Pclass"]== "1" && titanic_test[i,"Sex"]== "female")
    tmp[i] = 1
}
tmp

titanic_test$Survived = tmp

result = titanic_test[,c("PassengerId","Survived")]
result
write.csv(result,"submissionv3.csv")

#Reading the train data
# EDA exploartaion of data analysis
# univariate stats is really important here
# bivariate
# multivariate
titanic_train = read.csv("train.csv")
str(titanic_train)
titanic_train$Pclass= as.factor(titanic_train$Pclass)
titanic_train$Name = as.character(titanic_train$Name)
titanic_train$Sex = as.factor(titanic_train$Sex)
Summary.data.frame(titanic_train)
getwd()

