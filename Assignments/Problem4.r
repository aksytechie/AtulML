setwd("D://Atul//RProgramming//Assignments")

#a
rainfall_dat = read.csv("rainfall.dat",header = FALSE,sep="")

#b
str(rainfall_dat)
dim(rainfall_dat)

#c
names(rainfall_dat)

#d
rainfall_dat[2,4]

#e
rainfall_dat[2,]

#f naming the columns
names(rainfall_dat) = c('year', 'month', 'day', 0:23)
names(rainfall_dat)

#g 
day = numeric()
for (i in 1:5070){
  day[i] = sum(rainfall_dat[i,4:27])
}

#h

hist(day)
