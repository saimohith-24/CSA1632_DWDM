data_norm <- c(200, 300, 400, 600, 1000) # [cite: 26]

# (a) Min-max normalization (mapping to 0-1) [cite: 27]
min_val <- 0
max_val <- 1
min_max <- (data_norm - min(data_norm)) / (max(data_norm) - min(data_norm)) * (max_val - min_val) + min_val

# (b) Z-score normalization [cite: 28]
z_score <- (data_norm - mean(data_norm)) / sd(data_norm)