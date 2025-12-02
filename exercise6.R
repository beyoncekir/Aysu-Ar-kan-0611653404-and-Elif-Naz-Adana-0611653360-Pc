# Problem setup:
# A Spanish company buys FFP2 masks from three suppliers:
# Argentina (A) with prior probability P(A) = 1/6
# Belgium  (B) with prior probability P(B) = 1/2
# China    (C) with prior probability P(C) = 1/3
#
# Defect rates observed/known:
# Argentina: 18%  -> dA = 0.18
# Belgium:   2/25 -> dB = 2/25 = 0.08
# China:     unknown -> dC (to be found)
#
# Overall observed defective proportion: P(defective) = 0.10
#
# Tasks:
# 1) If a randomly chosen mask is defective, compute P(China | defective).
# 2) If a randomly chosen mask is non-defective, find which manufacturer is most likely.

# Define priors and known defect rates
pA <- 1/6
pB <- 1/2
pC <- 1/3

dA <- 0.18
dB <- 2/25   # = 0.08
P_def_overall <- 0.10

# 1) Solve for dC using the law of total probability:
# P(def) = pA*dA + pB*dB + pC*dC  --> dC = (P_def_overall - pA*dA - pB*dB) / pC
dC <- (P_def_overall - pA * dA - pB * dB) / pC

# Compute P(China | defective) using Bayes' theorem:
# P(C | def) = P(C and def) / P(def) = (pC * dC) / P_def_overall
P_China_given_def <- (pC * dC) / P_def_overall

# 2) For a non-defective mask:
# defect-free rates: (1 - dA), (1 - dB), (1 - dC)
# Use Bayes: P(supplier | nondef) = p_supplier * (1 - d_supplier) / P(nondef)
P_nondef_overall <- 1 - P_def_overall

joint_A_nondef <- pA * (1 - dA)
joint_B_nondef <- pB * (1 - dB)
joint_C_nondef <- pC * (1 - dC)

P_A_given_nondef <- joint_A_nondef / P_nondef_overall
P_B_given_nondef <- joint_B_nondef / P_nondef_overall
P_C_given_nondef <- joint_C_nondef / P_nondef_overall

# Print numeric results with reasonable rounding
cat("Inferred defect rate for China (dC):", round(dC, 4), "\n\n")

cat("1) If a mask is defective:\n")
cat("P(China | defective) =", round(P_China_given_def, 4),
    " (", round(P_China_given_def * 100, 2), "% )\n\n", sep="")

cat("2) If a mask is non-defective, posterior probabilities by supplier:\n")
cat("P(Argentina | non-defective) =", round(P_A_given_nondef, 4),
    " (", round(P_A_given_nondef * 100, 2), "% )\n")
cat("P(Belgium  | non-defective) =", round(P_B_given_nondef, 4),
    " (", round(P_B_given_nondef * 100, 2), "% )\n")
cat("P(China    | non-defective) =", round(P_C_given_nondef, 4),
    " (", round(P_C_given_nondef * 100, 2), "% )\n")
