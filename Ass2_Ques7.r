 #Question 7: Plot a bar chart and pie chart for the following data:

# Given data for population
population <- c(21, 62, 10, 65)
city <- c("London", "New York", "Singapore", "Dubai")

# Bar chart
barplot(population, names.arg = city, main = "Population by City", xlab = "City", 
ylab = "Population (in Lakhs)", col = "Red", border = "black")

# Pie chart
pie(population, labels = paste(city, "(", population, ")", sep = " "), main = "Population Distribution by City",
 col = rainbow(length(population)), border = "white")