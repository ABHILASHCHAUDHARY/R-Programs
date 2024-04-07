lambda <- 10

# Calculate percentiles
percentiles <- qpois(p = c(0.25, 0.50, 0.75), lambda = lambda)

# Print percentiles
cat("25th percentile:", percentiles[1], "\n")
cat("50th percentile:", percentiles[2], "\n")
cat("75th percentile:", percentiles[3], "\n")

# Calculate probability that X is greater than 15
1-ppois(15,10) #P(X>=15)

