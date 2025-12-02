# Lottery Probability Exercise: Lucky ... or not

# Total numbers in the lottery and numbers drawn
total_numbers <- 49
numbers_drawn <- 6
bets_placed <- 8176049  # Number of bets placed

# -----------------------------
# 1. First-category prize (all 6 numbers match)
# Probability of winning first prize
prob_first <- 1 / choose(total_numbers, numbers_drawn)
print(paste("Probability of first-category prize:", signif(prob_first,6)))

# Exactly 3 wins among all bets
prob_exactly_3_first <- dbinom(3, size = bets_placed, prob = prob_first)
# At least 1 win among all bets
prob_at_least_1_first <- 1 - dbinom(0, size = bets_placed, prob = prob_first)
print(paste("Exactly 3 first-prize wins:", signif(prob_exactly_3_first,6)))
print(paste("At least 1 first-prize win:", signif(prob_at_least_1_first,6)))

# -----------------------------
# 2. Second-category prize (5 numbers + complementary number)
# Probability of winning second prize
prob_second <- 6 / choose(total_numbers, numbers_drawn)
print(paste("Probability of second-category prize:", signif(prob_second,6)))

# Exactly 3 wins among all bets
prob_exactly_3_second <- dbinom(3, size = bets_placed, prob = prob_second)
# At least 1 win among all bets
prob_at_least_1_second <- 1 - dbinom(0, size = bets_placed, prob = prob_second)
print(paste("Exactly 3 second-prize wins:", signif(prob_exactly_3_second,6)))
print(paste("At least 1 second-prize win:", signif(prob_at_least_1_second,6)))

# -----------------------------
# 3. Third-category prize (5 numbers, NOT complementary)
# Probability of winning third prize
prob_third <- (6 * 42) / choose(total_numbers, numbers_drawn)
print(paste("Probability of third-category prize:", signif(prob_third,6)))

# Exactly 3 wins among all bets
prob_exactly_3_third <- dbinom(3, size = bets_placed, prob = prob_third)
# At least 1 win among all bets
prob_at_least_1_third <- 1 - dbinom(0, size = bets_placed, prob = prob_third)
print(paste("Exactly 3 third-prize wins:", signif(prob_exactly_3_third,6)))
print(paste("At least 1 third-prize win:", signif(prob_at_least_1_third,6)))

# -----------------------------
# Optional: Create a summary table
results <- data.frame(
  Category = c("First", "Second", "Third"),
  Single_Bet_Prob = c(prob_first, prob_second, prob_third),
  Exactly_3_Wins = c(prob_exactly_3_first, prob_exactly_3_second, prob_exactly_3_third),
  At_Least_1_Win = c(prob_at_least_1_first, prob_at_least_1_second, prob_at_least_1_third)
)

print("Summary of probabilities for all prize categories:")
print(results)
