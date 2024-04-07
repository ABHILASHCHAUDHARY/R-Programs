# Define variables
n <- 100        # Total of smokers
p <- 0.3        # Probability of a smoker having lung disease
max_case <- 35 # Max no of people with lung disease

# Calculate the probability using the cumulative distribution function (CDF)
prob_max_case <- pbinom(max_case, size = n, prob = p)

cat("The probability that a maximum of 35 people wind up with lung disease is:", prob_max_case)
