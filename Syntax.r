cust.names =c("c1","c2","c3")
movie.names=c("m1","m2","m3")
m1=matrix(1:9,3,3,TRUE,list(cust.names,movie.names))
m1
# For combining two things use list 
m1["c1",] 
m1[,"m1"]
# Find the commnads in the repository
m2= matrix(rep("A",6),3,2, TRUE)
m2
rm(m2) #remove the variable from the RAM
gc() #Garbage Collector
rownames(m1) = c("movie1","movie2","movie3")
colnames(m1) = c("cust1","cust2","cust3")

ls()
ls("package:base")
# Two files in the R studio .r and . rdata, the rdata concsists of the data of the file
# Whenever the file is opened again, the datais pulled back into the session from the file
# matrix elements can be accessed in two ways, row access and named access
# Dataframe : EAch column is a different type here
getwd()

USUnivs = read.csv("Univs.csv");
#Data succesully lodaded into the memory
class(USUnivs)
# It is a data frame, reading data from the frame
dim(m1)
dim(USUnivs)
# Creating a frame without an excel file

age = c(20,50,10,40,80)
names=c("aa","bb","cc","dd","ee")
survive = c("T","F","T","F","T")
titainc = data.frame(age,names,survive)
dim(titainc)
str(USUnivs) # Get details about the frame
# Changing type of  column in the frame
str(titainc)
as.character(titainc[,2])
#or
titainc$names = as.character(titainc$names) # Forceful casting
# writing a csv file
write.csv(titainc,"titanic.csv")

# Building a amtrix out of nowhere
m2 = matrix(NA,3,2, TRUE)
m2[1,] = c(1,2)
m2[2,] = c(4,5)
m2[3,] = c(3,4)
m2 = rbind(m2,c(10,11)) # Assign the output again to the old matrix
m2
USUnivs$GRE.Score
USUnivs[1:10,c(3,5)]
USUnivs[1:10,c("GRE.Score")]
USUnivs[1:5,]
names(USUnivs)#List of columns
# A frame can casted to matrix
# A matrix can also be read froma csv file
# Explore this For a sigle row matrix the type is numeric and when added a new row the
# type shfits to matirx
b=c(1,2)
class(b)
b
b=rbind(b,c(3,3))
is.vector(b)
## Lists
# An ordered collection of elements of any type, very flexible
e1= 5
e2 = c(1:3)
e3 = matrix(1:6,3,2)
class(e1)
# combining all the above Data Structures
listtest = list(e1,e2,e3)
listtest
listtest[[3]]
names(listtest) = c("int","num","mat")
names(listtest)
names(listtest[1])
listtest$int
listtest[[1]]
listtest[1]
length(listtest)

#Types in R
# numeric/logical/character
# Advanced types (Containers/DS)
# vector, mtarix, data frame, list, factor

