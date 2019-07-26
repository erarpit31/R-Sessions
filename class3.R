#to install package 
#dplyr----> Data Manipulation (dplyr is name of package)
install.packages("dplyr")
#call package library also
library("dplyr")
#create new data and make new dataset with adding multiple columns (Select Function)
data1=select(iris,Sepal.Length,Species)
#Filter Function (Condition)
filter_data=filter(iris,Sepal.Length>5)
filter_data=filter(iris,Sepal.Length>5 & Species=="Setosa")
filter_data=filter(iris,Sepal.Length>5 | Species=="Setosa")
#Muted
iris=iris%>%mutate(Newcol=Sepal.Length)
iris=iris%>%mutate(NewCol1=Sepal.Width)                   
  #Group_By functions 
iris%>%group_by(Species)%>%summarise(M=mean(Sepal.Length))
#uniqe value in dataset
unique(iris$Species) 
#in data set sepallength more than 5 than in the flag(create new col) col put 1 otherwise 0.
iris$flag=ifelse(iris$Sepal.Length>5,1,0)
#in data set sepallength more than 5 than in the flag1(create new col) col put 999 otherwise samevalue.
iris$flag1=ifelse(iris$Sepal.Length>5,999,iris$Sepal.Length)
#remove column
data2=select(iris,-Sepal.Length)
#remove multiple column
data3=select(iris,-Sepal.Width,-Species) 
data4=select(iris,-3)
#remove rows
data4=iris[-3, ]

# Again get Original Data
iris
View(iris)
#one dimensional 
a=c(1,5,10)
a
b=c(10,15,20)
b
#rowwise
rbind(a,b)
#column wise
cbind(a,b)
#create a matrix
seq(1:16)
M=matrix(seq(1:16),4,4)
M
#Data Frame
df1=data.frame(CID=c(1:6),Name=c("a","b","c","d","e","f"),Income=c(2000,4000,6000,8000,10000,12000))
df1

df2=data.frame(CID=c(2,4,6),Age=c(25,42,27))
df2
#join 2 tables
left_join(df1,df2,by="CID")
right_join(df1,df2,by="CID")
#summary of your dataset
summary(iris)
table(iris$Sepal.Length)
table(iris$Species)
prop.table(table(iris$Species))
#string of dataset
str(iris)
#call matrix
M
#apply sum function for row in matrix
apply(M,1,sum)
#apply sum function for column in matrix
apply(M,2,sum)
#remove dataset
rm(iris)
#create and apply your own function (sum of x)
data5=apply(My_data,2,function(x)x/sum(x))
View(iris)
My_data=iris[-5]
#create and apply your own function and put condition.
data6=apply(My_data,2,function(x)ifelse(x>3,999,x))
