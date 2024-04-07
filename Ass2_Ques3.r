# Sample data
data <- data.frame(
  gender = c("Female", "Male","Male", "Female", "Male", "Male", "Female", "Male","Male", "Female"),
  weight = c(55, 85, 75,42,93,63,58,75,89,67),
  height = c(161,185,174,154,188,178,170,167,181,178 )
)

# Create a scatter plot
plot(data$weight, data$height, 
     xlab = "Weight", ylab = "Height", 
     main = "Weight vs Height", 
     pch = ifelse(data$gender == "Male", 19, 17), 
     col = ifelse(data$gender == "Male", "blue", "red"),
     xlim = c(min(data$weight) - 5, max(data$weight) + 5),
     ylim = c(min(data$height) - 5, max(data$height) + 5))

# Add legend
legend("topleft", legend = c("Male", "Female"), 
       pch = c(19, 17), col = c("blue", "red"), title = "Gender")

# Box plot
boxplot(weight ~ gender, data = data, 
        xlab = "Gender", ylab = "Weight", 
        main = "Box plot of Weight by Gender",
        col = c("blue", "red"))