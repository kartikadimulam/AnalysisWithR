#1
x=matrix(data=c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6,6.5),nrow=4,ncol=2,byrow=TRUE)
x=x[-3,]
dim(x)

#2
#a 
#i. numeric-discrete
#ii. categorical-ordinal
#iii. numeric-continuous
#iv. categorical-ordinal
#v. categorical-nominal
#vi. numeric-continuous
#b
#i. sample statistic, population is New Zealanders who own a gaming console
#ii. sample statistic, population is the hoods of cars in No Dogdgy Carz Yard
#iii. population parameter
#iv. population parameter
#v. sample statistic, the population is the average number of times per day a vending machine is
#used in a year

#3 13.3
#a
quantile(chickwts$weight, 0.1)
quantile(chickwts$weight, 0.3)
quantile(chickwts$weight, 0.9)
tapply(chickwts$weight, INDEX=chickwts$feed, FUN=var)

#b
#i
IQR(quakes$depth)
#ii
summary(quakes$mag[quakes$depth>400])
#The summary of all magnitudes of seismic events shows greater values for those seismic events less than 400km than more than 400km.
#Less than 400km has a higher mean and median

#4 14.1
hist(InsectSprays$count)
#b
tapply(InsectSprays$count, INDEX=InsectSprays$spray, FUN=length)
spray.freq = table(InsectSprays$spray)
barplot(spray.freq, main="Frequencies of Sprays", xlab="Spray Type", ylab="Frequency", names.arg=c("A Spray", "B Spray","C Spray", 
                                                                                                   "D Spray","E Spray","F Spray"))


