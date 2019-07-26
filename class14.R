f_data=read.table("C:/Users/HP/Documents/dataset/pseudo_facebook.tsv",header=TRUE)
View(f_data)

# Q1 What is the distribution of date of birth of all users ?
a=table(f_data$age)
class(a)
View(a)

#Q2 Draw Histogram
hist(f_data$friend_count)
h = hist(f_data$friend_count, plot=F)
#Q3 

