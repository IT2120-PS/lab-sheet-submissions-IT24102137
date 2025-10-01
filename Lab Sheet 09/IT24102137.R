setwd("H:\\SLIIT\\2nd Year\\1st Sem\\AIML\\LAB\\LAB 09")
getwd()

# Exercise 1
# Part 1
baking_time <- rnorm(25, mean = 45, sd = 2)

# Part 2
t.test(baking_time, mu = 46, alternative = "less")
