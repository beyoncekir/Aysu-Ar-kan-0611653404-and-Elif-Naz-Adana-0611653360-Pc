#Consider the experiment of tossing three coins, and the events A=heads
#and tails occur and B=fewer than two heads occur. Are the events A and
#B independent or dependent?
# We consider the sample space of all outcomes from tossing 3 fair coins.
# Each outcome is a sequence of H (heads) and T (tails).
# There are 2^3 = 8 equally likely outcomes.

outcomes <- c("HHH", "HHT", "HTH", "THH",
              "HTT", "THT", "TTH", "TTT")

# Event A: "heads and tails occur"
# That means the outcome must contain at least one H AND at least one T.
A <- outcomes[grepl("H", outcomes) & grepl("T", outcomes)]

# Event B: "fewer than two heads occur"
# That means 0 heads or 1 head.
count_heads <- function(x) sum(strsplit(x, "")[[1]] == "H")
B <- outcomes[sapply(outcomes, count_heads) < 2]

# Compute probabilities (all outcomes are equally likely).
P_A <- length(A) / length(outcomes)    # P(A)
P_B <- length(B) / length(outcomes)    # P(B)

# Intersection A ∩ B:
AB <- intersect(A, B)
P_AB <- length(AB) / length(outcomes)  # P(A ∩ B)

# Check independence:
# Events are independent if P(A ∩ B) = P(A) * P(B)
check_independence <- P_A * P_B

# Print results
cat("Event A outcomes:", A, "\n")
cat("Event B outcomes:", B, "\n")
cat("A ∩ B outcomes:", AB, "\n\n")

cat("P(A) =", P_A, "\n")
cat("P(B) =", P_B, "\n")
cat("P(A ∩ B) =", P_AB, "\n")
cat("P(A)*P(B) =", check_independence, "\n")
