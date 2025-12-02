# Binomial Distribution Example: Tossing 10 Coins

# Define parameters
n <- 10       # Number of coin tosses
p <- 0.5      # Probability of getting heads

# Random variable X: number of heads in 10 tosses
X <- 0:n

# 1. Probability of getting exactly 4 heads
# Formula: P(X = x) = choose(n, x) * p^x * (1-p)^(n-x)
prob_4_heads <- dbinom(4, size = n, prob = p)
print(paste("Probability of getting exactly 4 heads:", round(prob_4_heads, 4)))
# Should be approximately 0.2051

# 2. Probability of getting two or fewer heads
# P(X <= 2) = sum of probabilities for X = 0, 1, 2
prob_two_or_less <- pbinom(2, size = n, prob = p)
print(paste("Probability of getting 2 or fewer heads:", round(prob_two_or_less, 4)))
# Should be approximately 0.0547

# 3. Expected number of heads
# Formula: E(X) = n * p
expected_heads <- n * p
print(paste("Expected number of heads:", expected_heads))
# Should be 5
