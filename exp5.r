age <- c(23,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61,62,63)
fat <- c(9.5,17.3,25.9,29.1,28.4,35.6,30.2,34.6,36.7,
         37.2,38.5,41.2,42.0,43.6,44.2,45.1,46.5,48.3)

mean(age); median(age); sd(age)
mean(fat); median(fat); sd(fat)

# Boxplots
boxplot(age, main="Age")
boxplot(fat, main="% Body Fat")

# Scatter plot
plot(age, fat, main="Age vs Body Fat", xlab="Age", ylab="Fat %")

# Q-Q plots
qqnorm(age); qqline(age)
qqnorm(fat); qqline(fat)
