# Question 1) Create a vector X of all prime numbers from 1 to 1000. 
prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else 
  {
    stop("Input number should be at least 2.")
  }
} 
X=prime_numbers(1000)
cat("Elements of vector X = ",X)

# 1/a) Count the number of elements in this vector X
cat("\n count of prime numbers from 1 to 1000=", length(X))

# 1/b) Find their sum
cat("\n um of elements in vector X =",sum(X))

# 1/c) Find their average.
cat("\n Average of elements in vector =",mean(X))

# 1/d) Add 5 to the last 10 elements of the vector X.
Y=tail(X,10)
Z=c()
for (item in Y) {
  item = item+5
  Z=c(Z,item)
}
cat("\n after adding 5 to the last 10 elements of the vector X = ",Z)