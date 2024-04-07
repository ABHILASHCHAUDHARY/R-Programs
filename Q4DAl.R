# Define variables
n <- 80       # Total households
p <- 0.35      # Probability 
max_case <- 30 # 30 households

# Calculate the probability using the cumulative distribution function (CDF)
prob_cars <- pbinom(max_case, size = n, prob = p)

cat("The probability that Carville will contain at least 30 households that have three cars:",
    1-prob_cars)
