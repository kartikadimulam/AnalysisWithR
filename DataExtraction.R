#1

sex = rep("m", 20)
sex[c(1,5:7,12,14:16)] = "f"
party=rep("National",20)
party[c(6,9,11)]="Greens"
party[c(10,20)]="Other"
party[c(1,4,12,15,16,19)]="Labour"

sexfactor = factor(x=sex)
partyfactor = factor(x=party, ordered=TRUE)
#using Ordered=TRUE in this situation does not make sense in either of the problems because the factors do not follow any identifiable order and have not defined the levels argument.
#R appears to arrange the levels alphabetically

partyfactor[sexfactor=="m"]
sexfactor[partyfactor=="National"]
append(sex,c("m","m","f","f","f","m"))
sexfactor = factor(x=sex)
append(party,c("National","Maori","Maori","Labour","Greens","Labour"))
partyfactor = factor(x=party, ordered=TRUE)
confidence_scores =  c(93, 55, 29, 100,
52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 40, 56, 45, 64, 31, 10, 29, 40,
95, 18, 61)
brk = c(0,30,70,100)
cut(confidence_scores, breaks=brk, right = T, include.lowest=T, labels=c("Low","Med","High"))


#2

numlist = seq(from=-4, to=4, length.out=20)
bool = matrix(c(F,T,T,T,F,T,T,F,F), nrow=3, ncol=3, byrow=FALSE)
names = c("don", "quixote")
levels = factor(x=c("LOW","MED","LOW","MED","MED","HIGH"))
bool[c(2,1),c(2,3)]
m = list(numlist, bool, names, levels, )

#3
names = sub(pattern="quixote", replacement="Quixote", x=names)
names = sub(pattern="don", replacement="Don", x=names)
cat('"Windmills! ATTACK!"\n"', "-\\",names,"/-")

#4
?which()
which(LETTERS == "B")
x <- c(3,7,7,8,9,10,1)
which(x == 7)
which(x>7)
m = matrix(rep(c(-1, 0, 1), 4), nrow = 4)
PracticeWhich <- which(m==0,arr.ind=TRUE)
#PracticeWhich is a matrix object class
which(numlist > 1)

