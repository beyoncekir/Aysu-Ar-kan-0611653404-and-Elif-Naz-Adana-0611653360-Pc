# Parameters
mu <- 210
sigma <- 20

# Probability within 1 standard deviation
p1 <- pnorm(mu + sigma, mean=mu, sd=sigma) - pnorm(mu - sigma, mean=mu, sd=sigma)
p1  # ~0.6827

# Probability within 2 standard deviations
p2 <- pnorm(mu + 2*sigma, mean=mu, sd=sigma) - pnorm(mu - 2*sigma, mean=mu, sd=sigma)
p2  # ~0.9545

# Probability within 3 standard deviations
p3 <- pnorm(mu + 3*sigma, mean=mu, sd=sigma) - pnorm(mu - 3*sigma, mean=mu, sd=sigma)
p3  # ~0.9973
