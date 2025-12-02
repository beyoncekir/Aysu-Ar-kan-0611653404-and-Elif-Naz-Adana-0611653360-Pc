# Example: Tossing two coins
# Random variable X = number of heads
# Probabilities: f(0) = 0.25, f(1) = 0.50, f(2) = 0.25

# Define the values of X and their probabilities
x_values <- c(0, 1, 2)
probabilities <- c(0.25, 0.50, 0.25)

# --- Mean (Expected Value) ---
# Formula: μ = Σ [xi * f(xi)]
mean_X <- sum(x_values * probabilities)

# --- Variance ---
# Formula: σ^2 = Σ [xi^2 * f(xi)] - μ^2
variance_X <- sum((x_values^2) * probabilities) - mean_X^2

# --- Standard Deviation ---
# Formula: σ = sqrt(σ^2)
sd_X <- sqrt(variance_X)

# Print the results
cat("Mean (Expected Value):", mean_X, "heads\n")
cat("Variance:", variance_X, "heads^2\n")
cat("Standard Deviation:", sd_X, "heads\n")
