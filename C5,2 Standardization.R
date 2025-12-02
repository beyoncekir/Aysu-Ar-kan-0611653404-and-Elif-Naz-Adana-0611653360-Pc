# Suppose X follows a normal distribution N(mu, sigma)
mu <- 10      # Mean of X
sigma <- 2    # Standard deviation of X

# Example: a value of X
x <- 14

# Standardization: Transform X into standard normal variable Z
# Z = (X - µ) / σ
z <- (x - mu) / sigma
z  # Prints the standardized value (Z)

# Using R's built-in function to get the probability P(X <= x)
# P(X <= x) = P(Z <= z) using pnorm
prob <- pnorm(z)
prob  # Prints the cumulative probability for X <= x
