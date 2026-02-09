# Plot mpg first 
plot(mtcars$mpg, type = "o", col = "blue", pch = 16, 
     ylim = c(0, max(mtcars$mpg, mtcars$qsec)), 
     ylab = "Value", main = "MPG and QSEC Line Chart")

# Add qsec using lines function 
lines(mtcars$qsec, type = "o", col = "red", pch = 15)

# Add a legend for clarity
legend("topright", legend = c("mpg", "qsec"), col = c("blue", "red"), pch = 16:15)