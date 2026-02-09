# Example data: Points scored by players [cite: 35]
player_scores <- c(10, 12, 11, 14, 13, 15, 12, 10, 11, 35, 2) # 35 and 2 are potential outliers

# Create boxplot to visualize distribution and outliers [cite: 35]
boxplot(player_scores, main = "Tennis Team Scoring Distribution", 
        ylab = "Points Scored", col = "lightblue")

# The points outside the whiskers represent the outliers the coach is looking for[cite: 34].