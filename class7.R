#Q1 import titanic DataSet
TD=read.csv("C:/Users/HP/Documents/dataset/titanic.csv")
View(TD)
#Q2 can you calculate mean fare aganist the male and female
var1=TD %>% group_by(Sex) %>% summarise(mean_Fare=mean(Fare),count=n())
View(var1)
#Q3 calculate in iris data set mean Sepal.Length amd Mean Species Width In Species
iris
View(iris)
var2=iris%>%group_by(Species)%>%summarise(mean(Sepal.Length),mean(Sepal.Width),count=n())
var2
#Q4 create dummy varible and use ?
install.packages("dummy")
View(TD)
#extract 2 column(sex,Embarked)from dataset(TD)
var3=select(TD,Sex,Embarked)
#create dummy varible and use for var3 ?
dummy_data=dummy(var3)
#join New_Data=TD + dummy_data
New_Data=cbind(TD[-c(5,12)],dummy_data) 
# New_Data= TD %>% merge(dummy_data)
New_Data
#find 
EC= TD %>% group_by(Embarked) %>% summarise(count=n())
View(EC)
prop.table(table(EC))
table(TD$Embarked)
prop.table(table(TD$Embarked))
#find null value 
sum(is.na(TD$Age))
sum(is.na(TD$Embarked))
TD$flag=ifelse(TD$Embarked=="","B",TD$Embarked)
table(TD$flag)
    