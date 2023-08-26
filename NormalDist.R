x = seq(-4,4,length=200) #Creates a vector of 200 evenly placed numbers from -4, 4. 
y = dnorm (x,mean=0,sd=1) #Using the vector x, calculates the value of any particular normal function curve at each value of x
z <- plot(x,y,type="l",lwd=2,col="blue") #creates a density plot based on the values acquired from x and y, plotting them 
#on the x axis and y axis, respectively. Lwd controls the thickness of the plotted line and col determines the color of the plot
1-pnorm(77, mean=68, sd=9)
#The probability that students score above 77 is 0.1587
pnorm(65,mean=80,sd=12)
0.1056498
1-pnorm(95,mean=80,sd=12)
0.1056498
1-(0.1056498*2)
0.7887004
#The probability than x is between 65 and 95 is 0.7887

1-pnorm(74,mean=80,sd=12)
#The probability that students score below a 74 is 0.6915
qnorm(0.95,mean=76,sd=8)
#The 95th percentile is a score of 89.1588
lower = pnorm(84,mean=100,sd=16)
higher = 1-pnorm(116,mean=100,sd=16)
between84and116 = 1-(higher+lower)
#68.27% ofthe population have an IQ in the interval(84,116)
qnorm(0.98,mean=100,sd=16)
#An IQ of 132.86 would warrant somebody to get admitted to MENSA