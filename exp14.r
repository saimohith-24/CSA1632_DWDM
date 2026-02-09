class_a <- c(76, 35, 47, 64, 95, 66, 89, 36, 84) # [cite: 19]
class_b <- c(51, 56, 84, 60, 59, 70, 63, 66, 50) # [cite: 20]

# (i) Find higher mean, median, and range [cite: 21]
summary_stats <- data.frame(
  Metric = c("Mean", "Median", "Range"),
  Class_A = c(mean(class_a), median(class_a), diff(range(class_a))),
  Class_B = c(mean(class_b), median(class_b), diff(range(class_b)))
)

# (ii) Plot Boxplot and give inferences [cite: 21]
boxplot(class_a, class_b, names = c("Class A", "Class B"), 
        main = "Math Exam Performance", col = c("orange", "cyan"), ylab = "Scores")