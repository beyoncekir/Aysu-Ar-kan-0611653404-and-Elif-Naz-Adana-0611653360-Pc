# Biased Coin Example: Tossing 10 Times

# 1. Biased coin with p = 0.7, 10 tosses
n <- 10       # Number of tosses
p <- 0.7      # Probability of heads

# 1a. Probability of exactly 2 heads
prob_2_heads <- dbinom(2, size = n, prob = p)
print(paste("Probability of exactly 2 heads (p=0.7):", round(prob_2_heads, 4)))
# Should be approximately 0.0014

# 1b. Probability of 4 or fewer heads
prob_4_or_less <- pbinom(4, size = n, prob = p)
print(paste("Probability of 4 or fewer heads (p=0.7):", round(prob_4_or_less, 4)))
# Should be approximately 0.0473

# 2. Biased coin with p = 0.17, 10 tosses
p2 <- 0.17

# Probability of exactly 3 heads
prob_3_heads <- dbinom(3, size = n, prob = p2)
print(paste("Probability of exactly 3 heads (p=0.17):", round(prob_3_heads, 4)))
# Should be approximately 0.1584
