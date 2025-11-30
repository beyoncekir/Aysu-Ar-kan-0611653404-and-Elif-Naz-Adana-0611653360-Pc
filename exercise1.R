# Total components
N <- 20

# Number of defective components
K <- 3

# Number of components selected
n <- 4

# Number of defective components we want in selection
k <- 1

# Calculate probability using the hypergeometric formula
prob <- dhyper(k, K, N-K, n)
prob
