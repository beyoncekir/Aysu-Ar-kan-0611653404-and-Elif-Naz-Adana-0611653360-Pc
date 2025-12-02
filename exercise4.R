# We continue with the same data from the previous example.
# Goal: Use the definition of conditional probability to compute
# P(Pass | Woman) = P(Pass ∩ Woman) / P(Woman)
# and verify the intersection identity:
# P(A ∩ B) = P(A) * P(B | A) = P(B) * P(A | B)

# Given frequencies:
women_pass <- 80
women_fail <- 20
men_pass <- 60
men_fail <- 40

# Totals
total_women <- women_pass + women_fail
total_men <- men_pass + men_fail
total_people <- total_women + total_men

# Compute probabilities needed:
P_woman <- total_women / total_people             # P(Woman)
P_pass <- (women_pass + men_pass) / total_people  # P(Pass)

# Intersection probability:
# P(Pass ∩ Woman) = number of women who passed / total
P_pass_and_woman <- women_pass / total_people

# Conditional probability using the definition:
# P(Pass | Woman) = P(Pass ∩ Woman) / P(Woman)
P_pass_given_woman <- P_pass_and_woman / P_woman

# Verify the identity:
# P(Pass ∩ Woman) should equal:
check1 <- P_woman * P_pass_given_woman   # P(Woman) * P(Pass | Woman)
check2 <- P_pass * (women_pass / (women_pass + men_pass))  # alternative form, not required but shown

# Print values
cat("P(Woman) =", P_woman, "\n")
cat("P(Pass) =", P_pass, "\n")
cat("P(Pass ∩ Woman) =", P_pass_and_woman, "\n\n")

cat("P(Pass | Woman) =", P_pass_given_woman, "\n\n")

cat("Check: P(Woman) * P(Pass | Woman) =", check1, "\n")
cat("These should match P(Pass ∩ Woman).\n")
