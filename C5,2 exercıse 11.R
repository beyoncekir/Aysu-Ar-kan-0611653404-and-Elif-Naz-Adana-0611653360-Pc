#Let X be a random variable with the following density function:
 # f (x) = (
#    c · x
 #   2
#    if 0 ≤ x ≤ 2
 #   0 otherwise
#    Find:
 #     a) The value of c Sol.: c=3/8
  #    b) The distribution function
#c) Calculate P(1 ≤ X ≤ 2) Sol.: 7/8
#d) Calculate the mean value and variance Sol.:
 # E[X] = 3/2, V[X] = 3/20
# ============================================
# Continuous Random Variable: f(x) = c * x^2, 0 <= x <= 2
# ============================================

# (a) Value of c
c <- 3/8  # Normalization constant so that integral of PDF = 1

# (b) Define the PDF
f <- function(x) {
  ifelse(x >= 0 & x <= 2, c * x^2, 0)
}

# (b) Define the CDF
F <- function(x) {
  if (x < 0) return(0)
  else if (x <= 2) return((x^3)/8)  # Integral of PDF
  else return(1)
}

# (c) Probability P(1 <= X <= 2)
p <- F(2) - F(1)
cat("P(1 <= X <= 2) =", p, "\n")  # Should be 7/8 = 0.875

# (d) Mean, second moment, and variance
mean_X <- integrate(function(x) x * f(x), lower=0, upper=2)$value
EX2 <- integrate(function(x) x^2 * f(x), lower=0, upper=2)$value
var_X <- EX2 - mean_X^2

cat("Mean E[X] =", mean_X, "\n")       # 3/2 = 1.5
cat("Variance Var(X) =", var_X, "\n")  # 3/20 = 0.15

# ============================================
# Optional: Plots of PDF and CDF
# ============================================

x_vals <- seq(0, 2, 0.01)

# Plot PDF
plot(x_vals, f(x_vals), type="l", lwd=2, col="blue",
     main="PDF of X", xlab="x", ylab="f(x)")

# Plot CDF
plot(x_vals, sapply(x_vals, F), type="l", lwd=2, col="red",
     main="CDF of X", xlab="x", ylab="F(x)")

# Add grid
grid()
