# Define the function f(x)
f <- function(x) {
  ifelse(x < 0, 0, exp(-x))
}

# 1. Check non-negativity
# We can check for a range of x values
x_values <- seq(-5, 5, 0.1)
all(f(x_values) >= 0)
# This should return TRUE, meaning f(x) is non-negative

# 2. Check if the integral over the real line equals 1
# We use integrate() function in R for numerical integration
result <- integrate(f, lower = -Inf, upper = Inf)
result$value
# result$value should be very close to 1
