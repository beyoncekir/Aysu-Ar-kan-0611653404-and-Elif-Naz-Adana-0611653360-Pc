# Binomial Distribution Example in R

# Define parameters
n <- 10    # Number of trials
p <- 0.4   # Probability of success in each trial

# Random variable X can take values from 0 to n
X <- 0:n

# Probability function: f(x) = choose(n, x) * p^x * (1-p)^(n-x)
probabilities <- dbinom(X, size = n, prob = p)
names(probabilities) <- X
print("Probability function f(x) for Binomial Distribution:")
print(probabilities)

# Calculate the mean
# Formula: E(X) = n * p
mean_X <- n * p
print(paste("Mean (E[X]):", mean_X))

# Calculate the variance
# Formula: Var(X) = n * p * (1 - p)
variance_X <- n * p * (1 - p)
print(paste("Variance (Var[X]):", variance_X))

# Optional: Plot the probability distribution
barplot(probabilities, names.arg = X, col = "skyblue",
        main = "Binomial Distribution B(n=10, p=0.4)",
        xlab = "Number of successes (X)", ylab = "Probability")
