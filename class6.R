#Q1import dplyr dataset
My_Data=read.csv("C:/Users/HP/Documents/dataset/dplyr.csv")
View(My_Data)
nrow(My_Data)
#Q2 select 5 Random row 
sample_n(My_Data,5)
#Q3 select 20% random row 
sample_frac(My_Data,.2) 
#Q4 Remove duplicate rows based on all
a=distinct(My_Data)
a
#Q5 Remove duplicate rows based on Index Column Or distinct for 1 column (col name Index)
distinct(My_Data, Index, .keep_all = TRUE)
distinct(My_Data, Index)
#Q6 Remove duplicate rows based on Index and Y2010 Column 
distinct(My_Data, Y2010, .keep_all = TRUE)
distinct(My_Data,Index,Y2010, .keep_all = TRUE)
distinct(My_Data,Index,Y2010)
#Q7 Drop index and state column from the data
drop_data=select(My_Data,-Index)
drop_data
drop_data=select(My_Data,-Index,-State)
drop_data
drop_data=select(My_Data,-c(Index,State))
drop_data
#Q8 Select the column ,names start with Y
data4=select(My_Data,starts_with("Y"))
data4
#Q9 Instead of Index Column ,get state column at first position
data5=select(My_Data,State,everything())
data5
#Q10 Rename Column Index as New_Index
data6=rename(My_Data,New_Index=Index)
data6
#Q11 select those rows where Index=A
data7=filter(My_Data,Index=="A")
data7
#Q12 select those rows where Index =A& C
data8=filter(My_Data,Index==c("A","C"))
data8
# Accurate 
data9=filter(My_Data,Index%in%c("A","C"))
data9
#Q13 create new variable New=Y2002/Y2003
data10=My_Data%>%mutate(NewVar=Y2002/Y2003)
data10

