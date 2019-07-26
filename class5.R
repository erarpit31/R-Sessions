iris
View(iris)
#draw histogram for Sepal.Length
hist(iris$Sepal.Length)
barplot()
#adavnce histogram Visulization
#ggplot2--> gg--> grammer of graphics
#install package "ggplot2"
install.packages("ggplot2")
library("ggplot2")
#particular code of ggplot2 
ggplot(data=iris,aes(x=Sepal.Length))+geom_histogram()
#create histogram in red color
ggplot(data=iris,aes(x=Sepal.Length))+geom_histogram(fill="red")
#create in density
ggplot(data=iris,aes(x=Sepal.Length))+geom_density()
#create density in red color
ggplot(data=iris,aes(x=Sepal.Length))+geom_density(fill="red")
# unique value in dataset iris col species(how many categories in Species)
unique(iris$Species)
#Create density of species catagory(three(setsa,versicolor,virginica))
ggplot(data=iris,aes(x=Sepal.Length,color=Species))+geom_density()
#create scatter function (point), in X and Y Axis 
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()
#create scatter Plot (point), in X and Y Axis with color of species
ggplot(data=iris,aes(x=Sepal.Length,color=Species,y=Sepal.Width))+geom_point()
#Create Bar Plot
ggplot(data=iris,aes(x=Sepal.Length,color=Species))+geom_bar()
#create Coord flip Bar
ggplot(data=iris,aes(x=Sepal.Length,color=Species))+geom_bar()+coord_flip()
# Data Types In R
#(i) Vector :- One D Data Set in R(Same Class)
a=c(1,5,7)
b=c(9,10,16)
rbind(a,b)
cbind(a,b)
#(ii) Matrix :- Two D Data Set in R(Same Class)
matrix(seq(1,16))
#matrix in 4 row and 4 column 
matrix(seq(1,16),4,4)
#matrix save with any name
d=matrix(seq(1,16),4,4)
#(iii) Data Frame:- where you have many types of data(not same Class)
#Create a Table(Data Frame)  df
df=data.frame(cid=c(1:6),Name=c("a","b","c","d","f","g"),Age=c(25,26,24,20,27,28))
#create another table  df2
df2=data.frame(cid=c(2,4,6),Loction=c("ajmer","bihar","chandigarh"))
# combine the table
combine_table=merge(df,df2)
