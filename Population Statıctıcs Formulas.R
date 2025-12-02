# Define the density function f(x)
f <- function(x) {
  ifelse(x >= 0, exp(-x), 0)  # Example: exponential density
}

# Mean (Expected Value)
# µ = ∫ x * f(x) dx from -∞ to ∞
mean_X <- integrate(function(x) x * f(x), lower = -Inf, upper = Inf)$value
mean_X  # Prints the mean

# Variance
# σ² = ∫ x^2 * f(x) dx - µ²
variance_X <- integrate(function(x) x^2 * f(x), lower = -Inf, upper = Inf)$value - mean_X^2
variance_X  # Prints the variance

# Standard Deviation
# σ = √variance
sd_X <- sqrt(variance_X)
sd_X  # Prints the standard deviation
