# Assuming the "water" dataset is available/downloaded 
# install.packages("HSAUR") # Run this if you don't have the dataset
library(HSAUR)
data("water")

# Plot linear relation 
plot(water$hardness, water$mortality, main = "Mortality vs Hardness", 
     xlab = "Hardness", ylab = "Mortality")

# Fit Linear Regression model 
model <- lm(mortality ~ hardness, data = water)
abline(model, col = "red")

# Predict mortality for hardness = 88 
prediction <- predict(model, data.frame(hardness = 88))
print(prediction)