#6
cause = c("Heart Disease", "Cancer","Stroke","Pulmonary Disease","Accidents","Others","All Causes")
deaths = c(738,538,158,103,98,682,2312)
deaths1995=data.frame(cause,deaths)
pie(deaths1995$deaths,labels=c("Heart Disease","Cancer","Stroke","Pulmonary Disease",
                               "Accidents","Others","All Causes"),col=c("white","blue","green","yellow","purple","orange","green"),main="Deaths in 1995 and Cause of Death")
    
#Yes because it shows a the size of each pie slice is relative to the amount of deaths caused by a particular disease. This makes it clear to the viewer which diseases are more and less deadly.    

#7
#Pie charts are confusing when trying to notice minor differences between figures in a data set. The slices may seem all a similar size while there are in fact significant differences hidden in the details of the data.
#It is hard to decipher from chart A if candidate 5 is doing better than candidate 3, since the slices look very similar in size. Although there might be a minor difference that would lend insight into who might win the election, it is difficult to identify in this pie chart.
#Between time A and time B, it seems that candidate 4 has a bigger slice of the pie at time B. 

#answering A and B again, now using the bar charts
#Candidate 5 is now clearly doing better than candidate 3
#Between time A and B, it is now clear than candidate 4 did better in both

#1
matrix(data=seq(0,1,length.out=15),nrow=5,ncol=3,byrow=FALSE)
x=matrix(data=seq(0,1,length.out=15),nrow=5,ncol=3,byrow=FALSE,dimnames=list(c("a","b","c","d","e"),c("x","y","z")))
#R by default will fill out a matrix by column
x[,1]
x[3,1]

#2
a=c(1,2,3)
b=c(6,7,8)
m=cbind(a,b)
class(m)

#3
woo=array(data=1:20,dim=c(3,4,2),dimnames=list(c("A","B","C"),c("D","E","F","G"),c("H","I")))
apply(X=woo,MARGIN = 2,FUN=sum)
woo=array(data=1:20,dim=c(3,4,2),dimnames=list(c("A","B","C"),c("D","E","F","G"),c("H","I")))
apply(X=woo,MARGIN = c(1,2),FUN=sum)
#it adds together the two matrices in the array, by element

#4
HEC <- c(32, 11, 10, 3, 53, 50, 25, 15, 3, 30, 5, 8)
HairEyeColor <- matrix(HEC, nrow = 3, ncol = 4, byrow = TRUE)
HairEyeColor1 <- HairEyeColor
rm(HairEyeColor)
View(HairEyeColor)
sum(HairEyeColor)
sum(HairEyeColor[,,"Male"])
sum(HairEyeColor[,"Blue",])
sum(HairEyeColor["Red",,"Female"])







