# Define the function f(x) again
f <- function(x) {
  ifelse(x < 0, 0, exp(-x))
}

# 1. Calculate the mean (expected value)
mean_result <- integrate(function(x) x * f(x), lower = -Inf, upper = Inf)
mean_result$value
# This gives E[X] = 1 for this exponential distribution

# 2. Calculate E[X^2] for variance
ex2_result <- integrate(function(x) x^2 * f(x), lower = -Inf, upper = Inf)
ex2_result$value
# This gives E[X^2] = 2

# 3. Calculate the variance
variance <- ex2_result$value - mean_result$value^2
variance
# Variance = 2 - 1^2 = 1
