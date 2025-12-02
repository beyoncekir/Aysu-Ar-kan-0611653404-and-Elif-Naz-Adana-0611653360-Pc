# Example: We have exam pass/fail data for 100 women and 100 men.
# The task: compute P(Pass) and the conditional probability P(Pass | Woman).

# Given frequencies:
women_pass <- 80
women_fail <- 20
men_pass <- 60
men_fail <- 40

# Total counts
total_women <- women_pass + women_fail
total_men <- men_pass + men_fail
total_people <- total_women + total_men

# 1. Compute overall probability of passing:
# P(Pass) = total passes / total people
total_pass <- women_pass + men_pass
P_pass <- total_pass / total_people

# 2. Compute conditional probability:
# P(Pass | Woman) = passes among women / total women
P_pass_given_woman <- women_pass / total_women

# Print results
cat("P(Pass) =", P_pass, "\n")
cat("P(Pass | Woman) =", P_pass_given_woman, "\n")
