# Poisson Distribution Example in R

# Define the Poisson parameter
lambda <- 3   # Average number of occurrences (λ)

# Random variable X: number of occurrences (we consider X = 0 to 10 for illustration)
X <- 0:10

# Probability function: f(x) = (lambda^x * exp(-lambda)) / factorial(x)
probabilities <- dpois(X, lambda)
names(probabilities) <- X
print("Probability function f(x) for Poisson Distribution:")
print(probabilities)

# Mean of X: E(X) = λ
mean_X <- lambda
print(paste("Mean (E[X]):", mean_X))

# Variance of X: Var(X) = λ
variance_X <- lambda
print(paste("Variance (Var[X]):", variance_X))

# Optional: Plot the Poisson distribution
barplot(probabilities, names.arg = X, col = "lightgreen",
        main = paste("Poisson Distribution P(lambda =", lambda, ")"),
        xlab = "Number of occurrences (X)", ylab = "Probability")
