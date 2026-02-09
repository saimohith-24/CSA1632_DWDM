# Price dataset
prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18)

# Basic Statistics
mean_price <- mean(prices)
median_price <- median(prices)
# Mode function (R doesn't have a built-in one for single values)
mode_price <- names(sort(table(prices), decreasing = TRUE))[1]

# Visualization
hist(prices, main="Distribution of All Electronics Prices", xlab="Price ($)", col="steelblue")