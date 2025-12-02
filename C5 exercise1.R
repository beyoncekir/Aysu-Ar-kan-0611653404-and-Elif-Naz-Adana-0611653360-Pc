# Random variable X = number of heads in two coin tosses
# Possible values: 0, 1, 2

# Probability mass function (pmf)
x_values <- c(0, 1, 2)
pmf <- c(0.25, 0.50, 0.25)   # f(x)

# Distribution function (CDF)
cdf <- cumsum(pmf)           # F(x) = P(X ≤ x)

# Print the probability distribution table
distribution_table <- data.frame(
  X = x_values,
  f_x = pmf,
  F_x = cdf
)

print("Probability distribution and distribution function of X:")
print(distribution_table)

# Explanation:
# f(x) gives the probability of obtaining exactly x heads.
# F(x) gives the probability of obtaining x or fewer heads.
