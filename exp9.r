marks <- c(55,60,71,63,55,65,50,55,58,59,61,63,65,67,71,72,75)

# Equal-width
hist(marks, breaks=3, col="lightblue", main="Equal Width")

# Equal-frequency
quantile(marks, probs=c(0,1/3,2/3,1))
