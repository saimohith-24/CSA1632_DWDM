# --- Part 1: Covariance and Correlation ---
# [cite_start]Preferences for photographs A, B, and C [cite: 5, 6]
[cite_start]A <- c(18, 2, 20)  # 5-6 yrs, 7-8 yrs, 9-10 yrs [cite: 7, 8, 9]
[cite_start]B <- c(22, 28, 10) [cite: 7, 8, 9]
[cite_start]C <- c(20, 40, 40) [cite: 7, 8, 9]

# [cite_start]Calculate sample covariance between B and C [cite: 10]
cov_BC <- cov(B, C)
print(paste("Covariance B and C:", cov_BC))

# [cite_start]Calculate sample covariance matrix for the preferences [cite: 11]
cov_matrix <- cov(cbind(A, B, C))
print("Covariance Matrix:")
print(cov_matrix)

# [cite_start]Calculate sample correlation between B and C [cite: 12]
cor_BC <- cor(B, C)
print(paste("Correlation B and C:", cor_BC))

# [cite_start]Calculate sample correlation matrix for the preferences [cite: 13]
cor_matrix <- cor(cbind(A, B, C))
print("Correlation Matrix:")
print(cor_matrix)


# --- Part 2: Partitioning and Smoothing ---
# [cite_start]The dataset provided [cite: 14]
data_v <- c(18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)

# (i) [cite_start]Partition the dataset using equal-frequency partitioning (bin = 3) [cite: 14]
sorted_data <- sort(data_v)
# Split into 3 equal-sized groups
bins <- split(sorted_data, ceiling(seq_along(sorted_data) / (length(sorted_data) / 3)))
print("Equal-Frequency Bins:")
print(bins)

# (ii) [cite_start]Data smoothing using bin means and bin boundaries [cite: 14]
# Smoothing by bin means
bin_means <- lapply(bins, function(x) rep(mean(x), length(x)))
print("Smoothed by Bin Means:")
print(bin_means)

# Smoothing by bin boundaries
bin_boundaries <- lapply(bins, function(x) {
  sapply(x, function(val) if(abs(val - min(x)) <= abs(val - max(x))) min(x) else max(x))
})
print("Smoothed by Bin Boundaries:")
print(bin_boundaries)

# (iii) [cite_start]Plot Histogram for the frequency division [cite: 14]
hist(data_v, breaks = 3, main = "Histogram: Equal Frequency Division", 
     xlab = "Price/Value", col = "lightblue", border = "black")