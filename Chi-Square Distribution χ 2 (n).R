# Define the degrees of freedom
n <- 5  # Example: 5 degrees of freedom

# Mean and variance of Chi-Square distribution
mean_chi2 <- n       # µ = n
variance_chi2 <- 2*n # σ² = 2n
sd_chi2 <- sqrt(variance_chi2) # Standard deviation

mean_chi2
variance_chi2
sd_chi2

# Density function of Chi-Square distribution
# Using R's built-in dchisq function
x <- 3  # Example value
density <- dchisq(x, df = n)
density  # Prints the density at x = 3

# Cumulative probability P(X <= x)
cum_prob <- pchisq(x, df = n)
cum_prob  # Prints cumulative probability
