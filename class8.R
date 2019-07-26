View(TD)
#extract continouse variable
Data1=TD%>%group_by()%>%summarise(mean(Age),mean(SibSp),mean(Parch),mean(Fare),count=n())
count_var=select(TD,Age,SibSp,Parch,Fare)
DataR1=summary(count_var)
View(DataR1)
#extract category varibale 
cat_var=select(TD, Survived, Pclass, Sex, Embarked,flag)
View(cat_var)
table(cat_var$Embarked)
#for frequecy
apply(cat_var,2,function(x)table(x))
#for ratio
apply(cat_var,2,function(x)prop.table(table(x)))
#for percentage
apply(cat_var,2,function(x)prop.table(table(x))*100)
#find the ratio for all continous variable
View(count_var)
apply(count_var,2,function(x)prop.table(table(x)))
#Q how to solve (age/sum of age) then find ratio for all in continouse 
ratio=apply(count_var[-1],2,function(x)x/sum(x))
View(ratio)
#Q in continous data set if value is greater then 2 then print 999 otherwise 888?
Ifelse=apply(count_var,2,function(x)ifelse(x<2,999,888))
View(Ifelse)
