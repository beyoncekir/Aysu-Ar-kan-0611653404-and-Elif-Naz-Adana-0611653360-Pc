# Geometric (Pascal) Distribution Example in R

# Define probability of success
p <- 0.3       # Probability that event A occurs
q <- 1 - p     # Probability that event A does NOT occur

# Random variable X = "position of first success"
# Example: consider k = 1 to 10 trials
k <- 1:10

# Probability function: p(k) = q^(k-1) * p
probabilities <- q^(k-1) * p
names(probabilities) <- k
print("Probability function p(k) for Geometric Distribution:")
print(probabilities)

# Mean of X: E(X) = 1 / p
mean_X <- 1 / p
print(paste("Mean (E[X]):", round(mean_X, 4)))

# Variance of X: Var(X) = q / p^2
variance_X <- q / p^2
print(paste("Variance (Var[X]):", round(variance_X, 4)))

# Standard deviation: sigma_X = sqrt(Var(X))
sd_X <- sqrt(variance_X)
print(paste("Standard Deviation (SD[X]):", round(sd_X, 4)))
