iris
View(iris)
#to check working directory
getwd()
setwd()
install.packages("dplyr")
library("dplyr")
two_column=select(iris,Sepal.Length,Species)
names(iris)
filter_data=filter(iris,Sepal.Length>6)
iris%>%group_by(Species)%>%summarise(Mean_Sepal=mean(Sepal.Length))


boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Width)
quantile(iris$Sepal.Width,c(0.05,0.95))
iris$Sepal.Width=ifelse(iris$Sepal.Width>4,3.8,iris$Sepal.Width)
iris$Sepal.Length=ifelse(iris$Sepal.Length>2.2,2.345,iris$Sepal.Length)
boxplot(iris$Sepal.Width)
