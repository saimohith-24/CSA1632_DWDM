# Define the dataset
data <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization (min = 0, max = 1)
# Formula: (x - min) / (max - min)
min_val <- min(data)
max_val <- max(data)
min_max_normalized <- (data - min_val) / (max_val - min_val)

# (b) Z-Score Normalization
# Formula: (x - mean) / standard_deviation
# The scale() function in R performs z-score normalization by default
z_score_normalized <- as.vector(scale(data))

# Display the results
cat("Original Data: ", data, "\n")
cat("Min-Max Normalized: ", min_max_normalized, "\n")
cat("Z-Score Normalized: ", z_score_normalized, "\n")