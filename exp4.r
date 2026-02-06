data <- c(11,13,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,45,71,72,73,75)

bins <- split(data, cut(seq_along(data), 3, labels=FALSE))

# Bin mean
lapply(bins, mean)

# Bin median
lapply(bins, median)

# Bin boundaries
lapply(bins, function(b) c(min(b), max(b)))
