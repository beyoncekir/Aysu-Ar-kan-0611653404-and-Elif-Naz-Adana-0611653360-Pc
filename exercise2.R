# Problem: how many independent rolls of a pair of dice are needed
# so that the probability of getting at least one "pair of 6s" (double-six)
# is greater than 0.5?

# Reasoning:
# - On one roll of two fair dice, probability of double-six = 1/36.
# - Probability of NOT getting double-six on a single roll = 35/36.
# - For n independent rolls, probability of NO double-six in all rolls = (35/36)^n.
# - Therefore probability of at least one double-six in n rolls = 1 - (35/36)^n.
# - We want the smallest integer n such that 1 - (35/36)^n > 0.5,
#   equivalently (35/36)^n < 0.5.
# - Solve for n: n > log(0.5) / log(35/36). Take ceiling to get the smallest integer.

# Compute the threshold n and display probabilities for n-1 and n:
p_single <- 1/36                       # probability of double-six in one roll
q_single <- 1 - p_single               # probability of no double-six in one roll

# compute exact n (real) and the smallest integer n
n_real <- log(0.5) / log(q_single)     # real-valued solution
n_needed <- ceiling(n_real)            # smallest integer satisfying the inequality

# print results
cat("Real-valued solution (n):", n_real, "\n")
cat("Smallest integer number of rolls required (n):", n_needed, "\n\n")

# show the probabilities for n_needed-1 and n_needed
prob_n_minus_1 <- 1 - q_single^(n_needed - 1)
prob_n <- 1 - q_single^n_needed

cat("Probability of at least one double-six in", n_needed - 1, "rolls:",
    round(prob_n_minus_1, 6), "\n")
cat("Probability of at least one double-six in", n_needed, "rolls:",
    round(prob_n, 6), "\n")

# For clarity: Check which is > 0.5
cat("\nIs probability > 0.5 for", n_needed - 1, "rolls? ",
    prob_n_minus_1 > 0.5, "\n")
cat("Is probability > 0.5 for", n_needed, "rolls? ",
    prob_n > 0.5, "\n")
