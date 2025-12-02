# Bernoulli Distribution Example in R

# Define the probability of success
p <- 0.3  # Probability of event A
q <- 1 - p # Probability of event not A

# Define the random variable X values
X  <- c(0, 1)

# Probability function
probabilities <- c(q, p)
names(probabilities) <- X
print("Probability function:")
print(probabilities)
# Output shows p(0) = q and p(1) = p

# Calculate the mean (expected value)
# Formula: E(X) = 0*q + 1*p = p
mean_X <- sum(X * probabilities)
print(paste("Mean (E[X]):", mean_X))

# Calculate the variance
# Formula: Var(X) = E(X^2) - (E(X))^2
# For Bernoulli, E(X^2) = 0^2*q + 1^2*p = p
variance_X <- sum((X^2) * probabilities) - mean_X^2
print(paste("Variance (Var[X]):", variance_X))
# Should match pq = p*(1-p)
print(paste("Check pq:", p*q))
