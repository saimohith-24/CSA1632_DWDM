# Load the diabetes dataset 
diabetes <- read.csv("diabetes.csv")

# Scatterplot: BloodPressure vs Age 
plot(diabetes$Age, diabetes$BloodPressure, 
     main = "Scatterplot: BP vs Age", 
     xlab = "Age", ylab = "Blood Pressure", col = "darkblue")

# Bar Chart: Showing BP trends by Age 
# We typically aggregate the mean BP per age group for a bar chart
avg_bp_by_age <- aggregate(BloodPressure ~ Age, data = diabetes, mean)
barplot(avg_bp_by_age$BloodPressure, names.arg = avg_bp_by_age$Age, 
        main = "Average Blood Pressure by Age", 
        xlab = "Age", ylab = "Mean Blood Pressure", col = "darkred")