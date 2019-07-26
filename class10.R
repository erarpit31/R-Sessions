View(Comp_Data)
New_Data1=select(Comp_Data,price,speed,hd)
nrow(New_Data1)*0.70
Training_Set1=New_Data1[1:4382,]
Test_Set2=New_Data[4382:6259,]
Model1=lm(price~(speed+hd),data=Training_Set1)
summary(Model1)
Test_Set2$predicted_price=predict(Model1,Test_Set2)
