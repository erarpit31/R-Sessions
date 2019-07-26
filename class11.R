View(com_data)
newdd=select(com_data,cd,price)
#t.test using for applicable for small sample testing,Performs one and two sample t-tests on vectors of data. 
help("t.test")
t.test(price~cd,data=com_data)
help("chisq.test")
#chisq.test performs chi-squared contingency table tests and goodness-of-fit tests
chisq.test(newdd$cd,newdd$price)
#Compute analysis of variance (or deviance) tables for one or more fitted model objects.
help("anova")
anova(newdd,cd,price,premium)
df=data.frame(price=c(1:6),cd=c("no","yes"))
anova(newdd,cd,price)
anova_test=aov(price~cd,data=com_data)
summary(anova_test)
#check corelation between price and speed
View(com_data)
newddd=select(com_data,price,speed)
ts1=newddd[1:4382,]
tests1=newddd[4383:6259,]
model4=lm(price~(speed),data=ts1)
summary(model4)
tests1$p_p=predict(model4,tests1)
cor(tests1$price,tests1$p_p)
#check whether speed has any influence on price or not
help("cor.test")
# cor.test --> Test for association between paired samples, using one of Pearson's 
#product moment correlation coefficient, Kendall's tau or Spearman's rho.
cor.test(~ price + speed, data = newddd) 
#or 2nd method we use this method also
cor.test(newddd$price,newddd$speed,data=newddd)
#multi colinearity table
View(com_data)
cor(com_data$price,com_data$speed,com_data$hd,com_data$ram,com_data$screen,com_data$ads,com_data$trend)
data1=select(com_data,price,speed,hd,ram,screen,ads,trend)
cor(data1)



