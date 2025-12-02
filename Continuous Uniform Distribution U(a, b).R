# Define the parameters of the uniform distribution
a <- 2   # Lower bound
b <- 5   # Upper bound

# Density function for continuous uniform distribution
f <- function(x) {
  ifelse(x >= a & x <= b, 1 / (b - a), 0)  # f(x) = 1/(b-a) for x in [a,b], else 0
}

# Mean (Expected Value)
# µ = (a + b) / 2
mean_X <- (a + b) / 2
mean_X  # Prints the mean

# Variance
# σ² = (b - a)^2 / 12
variance_X <- (b - a)^2 / 12
variance_X  # Prints the variance

# Standard Deviation
# σ = √variance
sd_X <- sqrt(variance_X)
sd_X  # Prints the standard deviation
