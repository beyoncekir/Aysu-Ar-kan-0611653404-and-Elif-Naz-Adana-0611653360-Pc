# Define the degrees of freedom
m <- 5  # Numerator degrees of freedom
n <- 10 # Denominator degrees of freedom

# Mean and variance of F-distribution
if(n > 2){
  mean_F <- n / (n - 2)  # µ = n / (n - 2)
} else {
  mean_F <- NA  # Mean undefined for n <= 2
}

if(n > 4){
  variance_F <- (2 * n^2 * (m + n - 2)) / (m * (n - 2)^2 * (n - 4))  # σ² formula
} else {
  variance_F <- NA  # Variance undefined for n <= 4
}

sd_F <- sqrt(variance_F)  # Standard deviation

mean_F
variance_F
sd_F

# Density function of F-distribution
# Using R's built-in df function
x <- 2  # Example value
density <- df(x, df1 = m, df2 = n)
density  # Prints the density at x = 2

# Cumulative probability P(F <= x)
cum_prob <- pf(x, df1 = m, df2 = n)
cum_prob  # Prints cumulative probability
