# Poisson Distribution Example: Hospital Admissions

# Define parameter
lambda <- 4   # Average number of admissions per day

# Random variable X: number of admissions (for illustration, 0 to 10)
X <- 0:10

# 1. Probability of exactly 5 admissions
# P(X = 5)
prob_5 <- dpois(5, lambda)
print(paste("Probability of exactly 5 admissions:", round(prob_5, 4)))
# Should be approximately 0.1563

# 2. Probability of fewer than 2 admissions
# P(X < 2) = P(X = 0) + P(X = 1)
prob_less_2 <- ppois(1, lambda)  # cumulative probability P(X <= 1)
print(paste("Probability of fewer than 2 admissions:", round(prob_less_2, 4)))
# Should be approximately 0.0916

# 3. Probability of more than 1 admission
# P(X > 1) = 1 - P(X <= 1)
prob_more_1 <- 1 - ppois(1, lambda)
print(paste("Probability of more than 1 admission:", round(prob_more_1, 4)))
# Should be approximately 0.9084

# Optional: Plot the Poisson distribution
probabilities <- dpois(X, lambda)
barplot(probabilities, names.arg = X, col = "lightblue",
        main = paste("Poisson Distribution P(lambda =", lambda, ")"),
        xlab = "Number of admissions (X)", ylab = "Probability")

