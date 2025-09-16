setwd("H:\\SLIIT\\2nd Year\\1st Sem\\PS\\Labs\\LAB 07")

#1. A train arrives at a station uniformly between 8:00 a.m. and 8:40 a.m. Let the random variable X represent 
#the number of minutes the train arrives after 8:00 a.m. What is the probability that the train arrives between 
#8:10 a.m. and 8:25 a.m.?

# We want to find P(10 < X < 25), calculated as P(X <= 25) - P(X <= 10).
punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)

#2. The time (in hours) to complete a software update is exponentially distributed with rate λ = (1/3) . 
#Find the probability that an update will take at most 2 hours.

# We want to find P(X <= 2).
pexp(2, rate = 1/3)

#3. Suppose IQ scores are normally distributed with a mean of 100 and a standard deviation of 15.
    
    #i. What is the probability that a randomly selected person has an IQ above 130?

    # We want to find P(X > 130)
    pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)

    #ii. What IQ score represents the 95th percentile?
    
    # We need to find the value 'k' for which P(X <= k) = 0.95.
    qnorm(0.95, mean = 100, sd = 15)
    