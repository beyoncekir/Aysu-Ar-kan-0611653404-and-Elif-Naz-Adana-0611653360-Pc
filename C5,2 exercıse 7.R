# Parameters
mu <- 60
sigma <- 10

# 1. P[X ≥ 70]
p1 <- 1 - pnorm(70, mean=mu, sd=sigma)

# 2. P[X ≤ 80]
p2 <- pnorm(80, mean=mu, sd=sigma)

# 3. P[X ≤ 30]
p3 <- pnorm(30, mean=mu, sd=sigma)

# 4. P[X ≥ 46]
p4 <- 1 - pnorm(46, mean=mu, sd=sigma)

# 5. P[39 ≤ X ≤ 80]
p5 <- pnorm(80, mean=mu, sd=sigma) - pnorm(39, mean=mu, sd=sigma)

# 6. P[80 ≤ X ≤ 82.5]
p6 <- pnorm(82.5, mean=mu, sd=sigma) - pnorm(80, mean=mu, sd=sigma)

# 7. P[30 ≤ X ≤ 40]
p7 <- pnorm(40, mean=mu, sd=sigma) - pnorm(30, mean=mu, sd=sigma)

# Print results
p1; p2; p3; p4; p5; p6; p7
