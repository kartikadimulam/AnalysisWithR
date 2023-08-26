#1
dframe = data.frame(person = c("Stan","Francine", "Steve", "Roger",
                               "Hayley", "Klaus"), sex = factor(c("M","F","M","M","F","M")), funny = factor(c("High","Med","Low","High","Med","Med")))

age = c(41,41,15,21,60,1600)
dframe = cbind(dframe, age)
dframe = dframe[,c(1,4,2,3)]

#2
IQR(quakes$depth)
summary(quakes$mag[quakes$depth>400])
#The summary of all magnitudes of seismic events shows greater values for those seismic events less than 400km than more than 400km.
#Less than 400km has a higher mean and median

hist(InsectSprays$count)

#3
#Probability of an ace is 4/52 = 1/13
#Probability of 4 of spades is 1/52

#15.2 a
#i Best described as a realization of a discrete random variable, since it is a specific date of observation
#ii Best described as a discrete random variable
#iii Best described as a discrete random variable
#iv Best described as a continous random variable
#v Best described as a realization of a discrete random variable
#vi Best described as a realization of a continuous random variable

#b
#i. Pr(s=4) = 0.41
#ii. 0.10 0.23 0.44 0.85 1.00
#iii. 1*0.1 + 2(0.13) + 3(0.21) + 4(0.41) + 5(0.15) = 3.38

