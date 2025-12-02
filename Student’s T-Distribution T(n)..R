# Define the degrees of freedom
n <- 10  # Example: 10 degrees of freedom

# Mean and variance of Student's T distribution
mean_t <- 0  # µ = 0
if(n > 2){
  variance_t <- n / (n - 2)  # σ² = n / (n - 2) if n > 2
} else {
  variance_t <- Inf  # Variance undefined for n <= 2
}
sd_t <- sqrt(variance_t)  # Standard deviation

mean_t
variance_t
sd_t

# Density function of T-distribution
# Using R's built-in dt function
x <- 1.5  # Example value
density <- dt(x, df = n)
density  # Prints the density at x = 1.5

# Cumulative probability P(T <= x)
cum_prob <- pt(x, df = n)
cum_prob  # Prints cumulative probability
