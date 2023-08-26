#1
1-pnorm(20,17,4.5) 
pnorm(10, 17, 4.5) - pnorm(5,17,4.5)
qnorm(0.10,17,4.5)
lower=17-4*4.5
higher = 17+4*4.5
xvals = seq(lower, higher, length=500)
fx = dnorm(xvals, 17, 4.5)
plot(xvals, fx, type='l',main='Average Student Test Time', xlab='Time',ylab='Prob')
xvals.sub=xvals[xvals<=11.23302]
fx.sub = fx[xvals<=11.23302]
polygon(rbind(c(-1,0),cbind(xvals.sub,fx.sub),c(11.23302,0)),border=NA,col='gray')

#2
pnorm(11,10,2)-pnorm(9.5,10,2)
#The standardized values of 9.5 and 11 are -0.25 and 0.5
pnorm(0.5,0,1)-pnorm(-0.25,0,1)
shortest_2.5_percent = qnorm(0.025,10,2)
(shortest_2.5_percent-10)/2

#3
for(num in 1:7){
  print(num^3)
}

#4
n=5
sum=0
if(n>0){
  for (num in 1:n){
    sum = sum + num
  }
} else {
  print("number must be positive")
}

#5

myfunction = function(a,b){
  if(is.numeric(a) & is.numeric(b)){
         a+b
  } else{
    print("The arguments were not both numeric")
  }
}
