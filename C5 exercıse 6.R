# Geometric Distribution Example: Defective Lightbulbs

# Define probability of success (defective bulb)
p <- 3/75       # Probability that a bulb is defective
q <- 1 - p      # Probability that a bulb is NOT defective

# Suppose we want the probability that the first defective bulb occurs at the 10th position
k <- 10

# Probability function: p(k) = q^(k-1) * p
prob_first_defective_10 <- q^(k-1) * p
print(paste("Probability that the first defective bulb is the 10th one:", round(prob_first_defective_10, 6)))

# Mean (expected position of first defective bulb)
mean_X <- 1 / p
print(paste("Expected position of first defective bulb (mean):", round(mean_X, 2)))

# Variance
variance_X <- q / p^2
print(paste("Variance:", round(variance_X, 2)))

# Standard deviation
sd_X <- sqrt(variance_X)
print(paste("Standard deviation:", round(sd_X, 2)))
