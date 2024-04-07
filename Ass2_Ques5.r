#Question 5

set.seed(123)

# Generate 100 random numbers with Gaussian distribution
mean <- 1
variance <- 0.5
random_numbers <- rnorm(100, mean, sqrt(variance))

# Print the generated random numbers
print(random_numbers)

# Plot histogram
hist(random_numbers, breaks = 20, freq = FALSE, col = "lightblue", main = "Histogram of Gaussian Distribution",
     xlab = "Value", ylab = "Density")

