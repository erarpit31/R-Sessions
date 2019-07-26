com_data=read.csv("C:/Users/HP/Documents/dataset/Computer_Data.csv")
new_d=select(com_data,price,speed,hd,ram,screen,)
trainset=new_d[1:4382,]
testset=new_d[4383:6259,]
model2=lm(price~(speed+hd),data=trainset)
summary(model2)
testset$p_price=predict(model2,testset)
cor(testset$price,testset$p_price)
