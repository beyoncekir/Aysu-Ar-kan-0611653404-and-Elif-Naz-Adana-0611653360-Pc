# Define the PDF function
f <- function(x) {
  ifelse(x < 0, 0,
         ifelse(x <= 2, 0.2 * x,
                ifelse(x <= 3, 0.4 * x - 0.4, 0)))
}

# (a) Define the CDF function
F <- function(x) {
  if (x < 0) {
    return(0)
  } else if (x <= 2) {
    # Integral from 0 to x of 0.2*t dt = 0.1*x^2
    return(0.1 * x^2)
  } else if (x <= 3) {
    # Integral from 0 to 2: 0.1*2^2 = 0.4
    # Integral from 2 to x: integrate(0.4*t - 0.4) dt = 0.2*x^2 - 0.4*x - (0.2*2^2 - 0.4*2) = ...
    return(0.4 + (0.2 * x^2 - 0.4 * x) - (0.2*4 - 0.8)) # 0.2*4 - 0.8 = 0 -> simplifies to 0.4 + 0.2*x^2 - 0.4*x
  } else {
    return(1)
  }
}

# Test the CDF at some points
F(c(-1, 0, 1, 2, 2.5, 3, 4))

# (b) Solve for c such that P(0.75 <= X <= c) = 0.5
target_prob <- 0.5
p0.75 <- F(0.75)

# Define a function to solve for c
solve_c <- function(c) F(c) - p0.75 - target_prob

# Use uniroot to find the solution in interval [0.75, 3]
c_value <- uniroot(solve_c, lower = 0.75, upper = 3)$root
c_value
