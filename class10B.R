cd=read.csv("C:/Users/HP/Documents/dataset/Computer_Data.csv")
newd=select(com_data,price,speed,hd,multi,premium,ads,trend)
ts=newd[1:4382,]
tests=newd[4383:6259,]
model3=lm(price~(speed+hd+multi+premium+ads+trend),data=ts)
summary(model3)
tests$p_p=predict(model3,tests)
cor(tests$price,tests$p_p)
