# (a) Define and plot the PDF
f <- function(x) {
  ifelse(x >= 0 & x <= 2, x^2, 0)
}

# Plot PDF
x_vals <- seq(0, 2, 0.01)
plot(x_vals, f(x_vals), type="l", lwd=2, col="blue",
     main="PDF of X", xlab="x", ylab="f(x)")

# (b) Define and plot the CDF
F <- function(x) {
  if (x < 0) {
    return(0)
  } else if (x <= 2) {
    # Integral of x^2 from 0 to x = x^3 / 3
    return(x^3 / 8) *  # note: check normalization
      8/8         # ensure total area is 1
  } else {
    return(1)
  }
}

# Actually normalize PDF first
normalization <- integrate(f, lower=0, upper=2)$value
f_norm <- function(x) ifelse(x>=0 & x<=2, f(x)/normalization, 0)
F <- function(x) {
  if (x < 0) {
    return(0)
  } else if (x <= 2) {
    return(integrate(f_norm, lower=0, upper=x)$value)
  } else {
    return(1)
  }
}

# Plot CDF
x_vals <- seq(0, 2, 0.01)
plot(x_vals, sapply(x_vals, F), type="l", lwd=2, col="red",
     main="CDF of X", xlab="x", ylab="F(x)")

# (c) Expected value, variance, standard deviation
mean_X <- integrate(function(x) x * f_norm(x), lower=0, upper=2)$value
E_X2 <- integrate(function(x) x^2 * f_norm(x), lower=0, upper=2)$value
var_X <- E_X2 - mean_X^2
sd_X <- sqrt(var_X)

mean_X
var_X
sd_X

# (d) Median, mode, interquartile range
# Median: F(Me) = 0.5, solve numerically
median_X <- uniroot(function(x) F(x) - 0.5, lower=0, upper=2)$root

# Mode: maximum of PDF
mode_X <- optimize(f_norm, interval=c(0,2), maximum=TRUE)$maximum

# Interquartile range: Q1 = F(Q1) = 0.25, Q3 = F(Q3) = 0.75
Q1 <- uniroot(function(x) F(x) - 0.25, lower=0, upper=2)$root
Q3 <- uniroot(function(x) F(x) - 0.75, lower=0, upper=2)$root
IQR <- Q3 - Q1

median_X
mode_X
IQR
