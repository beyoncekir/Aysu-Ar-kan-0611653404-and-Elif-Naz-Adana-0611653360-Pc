# Discrete random variable X with values and probabilities
x_values <- c(0, 1, 2)
probabilities <- c(0.25, 0.50, 0.25)

# --- Mean or Expected Value ---
# Formula: μ = E(X) = Σ xi * f(xi)
mean_X <- sum(x_values * probabilities)

# --- Variance ---
# Formula: σ^2 = Var(X) = Σ (xi^2 * f(xi)) − μ^2
variance_X <- sum((x_values^2) * probabilities) - mean_X^2

# --- Standard Deviation ---
# Formula: σ = sqrt(σ^2)
sd_X <- sqrt(variance_X)

# Print results
cat("Mean (Expected Value):", mean_X, "\n")
cat("Variance:", variance_X, "\n")
cat("Standard Deviation:", sd_X, "\n")
