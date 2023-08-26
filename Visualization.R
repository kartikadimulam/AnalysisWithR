?mtcars
library(datasets)
#histogram plot 
hist(mtcars$mpg)
c(min(mtcars$mpg), quantile(mtcars$mpg, 0.25), median(mtcars$mpg), quantile(mtcars$mpg, 0.75))
#5 num summary
summary(mtcars)
#boxplot numerical and categorical with specifications
boxplot(mycars$mpg - mtcars$gear,
         col="red",main="boxplot mpg", xlab="Number of gears", ylab="j")


#1
plot(mtcars$mpg, mtcars$drat)
#mpg appears on the x axis

#2
hist(mtcars$gear)

#3
summary(mtcars)

#4
boxplot(mtcars$mpg, col="blue", main="Miles Per US Gallon")

#5
boxplot(mtcars$mpg ~ mtcars$gear, col="green", main="Comparison of MPG and Number of Gears", xlab="MPG", ylab="Gears")