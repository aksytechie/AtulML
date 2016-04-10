# sample, the first argument is the vector, second is with or without replacement, third probability
set.seed(50) 
x_vec = sample(0:999, 250, replace=T) 
y_vec = sample(0:999, 250, replace=T) 

#a
diff = x_vec - y_vec 

#b and c
len = length(diff)

diff.600 = numeric()

for ( i in 1:len){ 
  if (diff[i]>600){
    diff.600[i]=y_vec[i]
  }}

diff.600

#d
diff.x600 = numeric()
j=0
for ( i in 1:len){
  if(y_vec[i]>600){
    diff.x600[j] = x_vec[i]
    j=j+1
  }
}
diff.x600

#e
maxy_vec = max(y_vec)
diff.range = numeric()
j=0
for(i in 1:len){
  if((maxy_vec-200) < y_vec[i]){
    diff.range[j] = y_vec[i]
    j=j+1
  }
}
diff.range
length(diff.range)

#haha
sum((max(y_vec)-200) < y_vec)

#f
count =0 
for(i in 1:len){
  if(x_vec[i] %% 2 == 0){
    count=count+1
  }
}
count
# haha
sum(x_vec%%2)


#g Sort the numbers in the vector x_vec in the order of increasing values in y_vec
x_vec[order(y_vec)]

#h Pick out the elements in y_vec at index positions 1, 4, 7, 10, 13 ...
x_vec[seq(1,250,3)]
