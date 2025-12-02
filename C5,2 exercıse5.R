# Define the uniform distribution parameters
a <- 0
b <- 15

# Probability of waiting between 5 and 10 minutes
p <- punif(10, min=a, max=b) - punif(5, min=a, max=b)
p
# This should return 1/3 = 0.3333

# Alternatively, using PDF directly
f <- function(x) 1/(b-a)
prob <- integrate(f, lower=5, upper=10)$value
prob
