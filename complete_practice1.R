#inbuilt dataset 
iris
# view dataset iris
View(iris)
#to check working directory
getwd()
# to change working directory ("Path Of New given Directory")
setwd()
# view dataset 
View(iris)
# names column of dataset
names(iris)
#export dataset (chk in the working directory after execute)
write.csv(iris,"prac1.csv")
# import a dataset 
My_data=read.csv("prac1.csv")
# view new Dataset
View(My_data)
# number row in dataset
nrow(My_data)
#number of column in dataset
ncol(My_data)
#dimension of dataset
dim(My_data)
#extract 3rd row data from dataset
My_data[3, ]
#extract 3rd col data from dataset
My_data[ ,3]
#for combine row eg 2,4,5
My_data[c(2,4,5),]
#for combine column eg 2,4,5
My_data[ ,c(2,4,5)]

