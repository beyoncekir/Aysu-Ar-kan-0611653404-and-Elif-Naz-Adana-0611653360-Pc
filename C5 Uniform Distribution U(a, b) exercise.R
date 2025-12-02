# Rolling a fair 6-sided die
# Random variable X = outcome of a die roll
# Possible values: 1, 2, 3, 4, 5, 6
x_values <- 1:6

# Probability mass function (pmf) for a uniform distribution
# Formula: p(k) = 1/n for k = 1, 2, ..., n
pmf <- rep(1/6, 6)

# --- Mean (Expected Value) ---
# Formula: μ = E(X) = Σ xi * p(xi)
mean_X <- sum(x_values * pmf)

# --- Variance ---
# Formula: σ^2 = Σ (xi^2 * p(xi)) - μ^2
variance_X <- sum((x_values^2) * pmf) - mean_X^2

# --- Standard Deviation ---
# Formula: σ = sqrt(σ^2)
sd_X <- sqrt(variance_X)

# Print the probability distribution table
distribution_table <- data.frame(
  X = x_values,
  f_x = pmf
)

cat("Probability Mass Function (PMF) for a fair 6-sided die:\n")
print(distribution_table)

# Print mean, variance, and standard deviation
cat("\nMean (Expected Value):", mean_X, "\n")
cat("Variance:", variance_X, "\n")
cat("Standard Deviation:", sd_X, "\n")
