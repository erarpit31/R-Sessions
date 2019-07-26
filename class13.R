#Apriori Algorithm
#Mathematical Parameters are
# Support; Confidence; Lift:
#Example :- total No of Trnsaction
#            Item A Apears = 20000 times
#            Item B Apears = 16000 times
#            Item (A+B) Apears = 10000 times
#    sUPPORT :- Popularity of the item among these transactions
# Sup(A) = 20000/40000=0.5-->50%
# Sup(B) = 16000/40000=0.4-->40%
# Sup(A+B) = 10000/40000=0.25-->25%
#     CONFIDENCE :- hOW frequently B appears along with A.
# Confidence = Sup(A+B)/Sup(A)= 0.25/0.50=0.5=50%
# Lift :- % of increase 
# Lift = Sup (A+B)/Sup(A)*Sup(B)=0.25/0.50*0.40=1.25% (A indicate for 1, And B indicate for decimal value 25)
# arules,arules Viz
