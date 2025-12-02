#There are two types of games. Game A is won if, when rolling two dice
#100 times, at least three double sixes are rolled. Another game, B, is won
#if, when rolling a dice 100 times, a six appears at least 15 times. Find
#1 The more favorable game. Sol.: B
#2 If 40 % of the players choose game A, while the rest play game B,
#what is the percentage of winners? Sol.: 64.16 %
#3 Under the same conditions as the previous section, what proportion
#of the winners played game A?


# Game A
nA <- 100
pA <- 1/36
# Probability of winning Game A (at least 3 double sixes)
p_win_A <- 1 - pbinom(2, size=nA, prob=pA)
p_win_A

# Game B
nB <- 100
pB <- 1/6
# Probability of winning Game B (at least 15 sixes)
p_win_B <- 1 - pbinom(14, size=nB, prob=pB)
p_win_B
