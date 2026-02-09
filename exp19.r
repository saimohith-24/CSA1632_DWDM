# Boxplot for "mpg" vs "cyl" in mtcars 
boxplot(mpg ~ cyl, data = mtcars, 
        main = "MPG vs Number of Cylinders", 
        xlab = "Number of Cylinders", 
        ylab = "Miles Per Gallon", 
        col = "lightgreen")