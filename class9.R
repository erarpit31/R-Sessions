#Machine Learning 
# -----> Train--->Experience---->Decision 
#To Extract knowledge from the data thats why we use ML-Algo's in Data-Science
import (Computer_Data)  
Comp_Data=read.csv("C:/Users/HP/Desktop/Computer_Data.csv")
View(Comp_Data)
#simple Linear regression 
#establise the relation between Price and Speed
#firstly extrace the price and speed from our data set
New_Data=select(Comp_Data,price,speed)
#Data--> Training Set (70%) & Test Set(30%)
#NOw calculate nrow(New_Data)*0.70
nrow(New_Data)*0.70
Training_Set=New_Data[1:4382,]
Test_Set=New_Data[4382:6259,]
#Create SLR Model 
Model=lm(price~speed,data=Training_Set)
#lm id inbilt function inR for Linear Regression
summary(Model)
#model apply in test set
Test_Set$predicted_price=predict(Model,Test_Set)
View(Test_Set)
#how to check corelation or accuracy 
cor(Test_Set$price,Test_Set$predicted_price)

