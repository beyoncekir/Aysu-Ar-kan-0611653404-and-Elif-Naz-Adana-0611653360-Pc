# Distribution defined through the CDF F(x)
# Probabilities are obtained from the jumps in the CDF

# Probability masses extracted from the jumps:
P0 <- 1/9              # P(X = 0)
P2 <- (4/9) - (1/9)    # P(X = 2)
P3 <- 1 - (4/9)        # P(X = 3)

# 1. P((0, 2)) — strictly between 0 and 2
P_open_0_2 <- 0

# 2. P([0, 2)) — includes 0, excludes 2
P_closed_0_open_2 <- P0

# 3. P([0, 2]) — includes both 0 and 2
P_closed_0_2 <- P0 + P2

# Print all results
cat("P((0, 2)) =", P_open_0_2, "\n")
cat("P([0, 2)) =", P_closed_0_open_2, "\n")
cat("P([0, 2]) =", P_closed_0_2, "\n")
