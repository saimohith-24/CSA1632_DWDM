# Histogram for "AirPassengers" dataset 
# Note: x-axis starts at 100; bins are 150 wide between 200 and 700 
hist(AirPassengers, 
     breaks = c(100, 200, 350, 500, 650, 800), 
     xlim = c(100, 700), 
     main = "AirPassengers Custom Bins", 
     xlab = "Number of Passengers")