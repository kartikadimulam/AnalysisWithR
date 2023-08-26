punif(5.5, min=3, max=70)
qunif(p = 0.85, min=3, max=70)
#59.95 feet is the markoff height for the tallest 15% of trees
#Heigh on the probability function is
dunif(x=59.95,min=3,max=70)
#mean = 70+3/2 = 73/2 = 36.5
#st dev^2 = (70-3)^2/12 = 374.0833
#st dev = 19.34
# 36.5 - (19.34/2) = 26.83
#36.5 + (19.34/2) = 46.17
0.3556716*2
punif(26.83, min=3,max=70)
1-punif(46.17, min=3, max=70)
1-0.3556716*2
randoms = runif(n=10, min=3, max=70)
quantile(randoms, 0.85)
randoms = runif(n=1000, min=3, max=70)
quantile(randoms, 0.85)

x = data.frame(subject = c("English", "Maths", "Chemistry", "Physics"), percentage = c(80,100,85,95))
colnames(x) = c("course", "score")
x[,1]
class(state.x77)
df1 = data.frame(state.x77)
class(df1)
length(which(df1$Income < 4300 ))
nrow(df1[df1$Income<4300,])

newswiss = swiss[c(1,2,3,10,11,12,13),c(3,4,6)]
newswiss[4,3] = NA
apply(X=newswiss,MARGIN = 2,FUN=sum)

hist(co2, main = "CO2 Uptakes", xlab = "Co2 Counts", col="blue" )
median(state.area)
diff(range(state.area))
mean(state.area)
min(state.area)
max(state.area)

x=c(2,3,3,3,4,2,5,10)

h= c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)
h>6
h>=6
h!= 6
h = h[4:length(h)]
t = array(h, dim = c(2,2,3))
t<= 7
t+2
any(t<=7)
all(t<=7)
i = matrix(rep(1,100), nrow=10, ncol=10)
 
f=  c(7,1,7,10,5,9,10,3,10,8)
f>5 | f==2
bar =  c(8,8,4,4,5,1,5,6,6,8) 
bar <= 6 & bar != 4
(f>5 | f==2) & (bar <= 6 & bar != 4)
baz = f+bar
baz >= 14 && baz != 15
bazbyfoo = baz/f
bazbyfoo >4 | bazbyfoo <= 2

foo <- c(7,5,6,1,2,10,8,3,8,2)
bar = foo[foo>=5]
foo = foo[foo<5]
baz = matrix(bar, nrow =2, ncol =3, byrow = TRUE)
baz[baz==8] = ((baz[1,2])^2)
all(baz<=25 & baz>4)

qux = array(c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3), dim = c(3,2,3))
which(qux==3 | qux ==4)
qux[qux<3 | qux >= 7] = 100
foo[c(F,T,F,T,F,T,F,T,F,T)]
foo[c(0,1,0,1,0,1,0,1,0,1)]


cat("\"The Quick Brown Fox\n\tjumped over\n\t the lazy dogs\"")
num1= 4
num2 = 0.75
cat("\"The result of multiplying ", num1, " by ",num2, " is ", num1*num2,"\"", sep='')
direck = "/Users/tdavies/Documents/RBook/"
substr(direck, start=8,stop=14) = "kadi" 
bar <- "How much wood could a woodchuck chuck"
newstring = paste(bar, "if a woodchuck could chuck wood")
gsub(pattern="wood",replacement = "metal", x=newstring)
price = "Two 6-packs for $12.99"
substr(price, start=5,stop=10) == '6-pack'
price=sub(pattern="12.99",replacement='10.99',x=price)

