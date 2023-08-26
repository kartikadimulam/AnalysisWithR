#1
for (i in 1:7) {
  print(i^3)
}

#2
prod <- 1 
count <- 0

while (prod <= 100000) {
  count <- count + 1
  prod <- prod * count
}

cat("The number of terms required is", count, "\n")

#3

sum_natural_numbers <- function(n) {
  sum <- 0 
  for (i in 1:n) {
    sum <- sum + i 
  }
  return(sum)
}

sum_natural_numbers(10)

#4
count <- 0  

repeat {
  cat("PSTAT 10\n")  
  count <- count + 1  
  if (count == 5) {  
    break
  }
}

#5
data(faithful)
faithful$eruption_category <- ifelse(faithful$eruptions < 3, "short", "long")
head(faithful)

