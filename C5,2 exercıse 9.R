#A telephone exchange can establish 450 connections per minute. The
#number of connections requested per minute follows a Poisson
#distribution with λ = 400. What is the probability that, in a given
#minute, the exchange is fully occupied?.
# Parameters
lambda <- 400
capacity <- 450

# Probability that exchange is fully occupied
p_full <- 1 - ppois(capacity - 1, lambda=lambda)
p_full
