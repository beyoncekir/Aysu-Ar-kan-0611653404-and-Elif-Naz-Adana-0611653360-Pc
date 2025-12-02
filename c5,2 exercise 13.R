#Exercise
#When analyzing the effect of an insect repellent, it was found that
#untreated fruits were attacked at a rate of 10 %, while only 1 % of those
#that had received the treatment were attacked. The fruits are packaged
#in boxes of 200 units.
#(a) Find the probability that in a box containing treated fruits, more
#than 5 are attacked. Sol.: 0.14292
#b) Find the probability that in a box of untreated fruits, more than 5
#are attacked.
# ======================================================
# Binomial probability: fruits attacked by insects
# ======================================================

# Number of fruits per box
n <- 200

# (a) Treated fruits
p_treated <- 0.01

# Probability more than 5 attacked (exact binomial)
p_more_5_treated <- 1 - pbinom(5, size=n, prob=p_treated)
cat("Treated fruits: P(X > 5) =", p_more_5_treated, "\n")  # ~0.14292

# (b) Untreated fruits
p_untreated <- 0.10

# Probability more than 5 attacked (exact binomial)
p_more_5_untreated <- 1 - pbinom(5, size=n, prob=p_untreated)
cat("Untreated fruits: P(X > 5) =", p_more_5_untreated, "\n")  # ~almost 1

# Optional: Normal approximation for untreated fruits
mu <- n * p_untreated
sigma <- sqrt(n * p_untreated * (1 - p_untreated))

# Apply continuity correction: P(X > 5) ~ P(Y > 5.5)
z <- (5.5 - mu) / sigma
p_normal_approx <- 1 - pnorm(z)
cat("Normal approximation (untreated): P(X > 5) ~", p_normal_approx, "\n")

# Optional: Plot binomial distributions
x_vals <- 0:40  # up to reasonable number of attacked fruits
prob_treated <- dbinom(x_vals, size=n, prob=p_treated)
prob_untreated <- dbinom(x_vals, size=n, prob=p_untreated)

# Plot treated fruits
plot(x_vals, prob_treated, type="h", lwd=2, col="blue",
     main="Probability Distribution of Attacked Fruits",
     xlab="Number of fruits attacked", ylab="Probability")
# Highlight >5 attacked
abline(v=6:40, col="red", lty=2)
legend("topright", legend=c("Treated (Binomial)", ">5 attacked"), col=c("blue","red"), lty=c(1,2), lwd=2)

# Plot untreated fruits (optional)
# plot(x_vals, prob_untreated, type="h", lwd=2, col="green",
#      main="Probability Distribution of Attacked Untreated Fruits",
#      xlab="Number of fruits attacked", ylab="Probability")
