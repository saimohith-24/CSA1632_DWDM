age <- c(23,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61,62,63)

# (i) Min-max normalization of 35
(35 - min(age)) / (max(age) - min(age))

# (ii) Z-score normalization
(35 - mean(age)) / 12.94

# (iii) Decimal scaling
35 / 10^2
