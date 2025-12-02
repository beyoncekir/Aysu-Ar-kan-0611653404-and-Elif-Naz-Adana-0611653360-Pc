#Exercise
#The distribution function associated with the production of a machine, in
#thousands of units, is of the form
#F(x) =
#0 if x < 0
#x(2 − x) if 0 ≤ x ≤ k
#1 if x > k.
#Determine k such that F is a distribution function. Calculate the density
#function of the production variable. Find the mean, median, and variance
#of the production.
# (1) Define parameters
k <- 1

# (2) Define PDF
f <- function(x) {
  ifelse(x >= 0 & x <= k, 2*(1-x), 0)
}

# (3) Mean
mean_X <- integrate(function(x) x * f(x), lower=0, upper=k)$value
mean_X  # should be 1/3 ~0.333

# (4) Second moment and variance
EX2 <- integrate(function(x) x^2 * f(x), lower=0, upper=k)$value
var_X <- EX2 - mean_X^2
var_X  # should be 1/18 ~0.0556

# (5) Median: solve F(M) = 0.5
F <- function(x) x*(2-x)
median_X <- uniroot(function(x) F(x)-0.5, lower=0, upper=1)$root
median_X  # ~0.293

# Optional: plot PDF
x_vals <- seq(0, 1, 0.01)
plot(x_vals, f(x_vals), type="l", lwd=2, col="blue", main="PDF of Production", ylab="f(x)", xlab="x")
grid()
