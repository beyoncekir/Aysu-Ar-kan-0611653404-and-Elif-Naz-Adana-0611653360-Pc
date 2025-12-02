# Define the parameters of the normal distribution
mu <- 0      # Mean
sigma <- 1   # Standard deviation

# Density function for the normal distribution
f <- function(x) {
  (1 / (sigma * sqrt(2 * pi))) * exp(-((x - mu)^2) / (2 * sigma^2))
}

# Example: Compute density at x = 0
f(0)  # Prints the density at x = 0

# Mean (Expected Value)
# µ = mu
mean_X <- mu
mean_X  # Prints the mean

# Variance
# σ² = sigma^2
variance_X <- sigma^2
variance_X  # Prints the variance

# Standard Deviation
# σ = sigma
sd_X <- sigma
sd_X  # Prints the standard deviation
