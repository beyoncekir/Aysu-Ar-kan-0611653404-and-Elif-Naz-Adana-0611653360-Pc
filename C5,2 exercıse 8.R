#Suppose the score of an exam follows a normal probability distribution
#model N(µ = 6, σ = 1.5). What percentage of the population will fail the
#exam?
# Parameters
mu <- 6
sigma <- 1.5
fail_score <- 5

# Probability of failing
p_fail <- pnorm(fail_score, mean=mu, sd=sigma)
p_fail
# Multiply by 100 to get percentage
percent_fail <- p_fail * 100
percent_fail
