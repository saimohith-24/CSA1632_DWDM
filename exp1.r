# Class intervals and frequencies
intervals <- data.frame(
  lower = c(1,5,15,20,50,80),
  upper = c(5,15,20,50,80,110),
  freq = c(200,450,300,1500,700,44)
)

N <- sum(intervals$freq)
cf <- cumsum(intervals$freq)

# Median class
median_class <- intervals[cf >= N/2, ][1,]

# Median formula
L <- median_class$lower
f <- median_class$freq
cf_prev <- cf[which(cf >= N/2)[1]-1]
h <- median_class$upper - median_class$lower

median <- L + ((N/2 - cf_prev)/f)*h
median
