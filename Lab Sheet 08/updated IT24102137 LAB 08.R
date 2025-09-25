# 1. Set the working directory
setwd("H:\\SLIIT\\2nd Year\\1st Sem\\PS\\Labs\\LAB 08")

data <- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
attach(data)

# Q1 Calculate Population Mean and Standard Deviation

names(data)<-c("weights")
attach(data)

popmn <- mean(weights)
popsd <- sd(weights)

print(popmn)
print(popsd)


# Q2 Draw 25 random samples of size 6 (with replacement) and calculate the sample 

samplesmeans <- c()
samplesds <- c()

for (i in 1:25) {
  s <- sample(weights,6,replace = TRUE)
  samples<-cbind(samplesmeans,samplesds)
  samplesmeans[i] <- mean(s)
  samplesds[i] <- sd(s)
}

s_means <- apply(samples, 2, mean)
s_sds <- apply(samples, 2, sd)

print(head(samplesmeans))
print(head(samplesds))


# Q3 Calculate the mean and standard deviation of the 25 sample means and state the
# relationship of them with true mean and true standard deviation.

samplemean <- mean(s_means)
sd_of_s_means <- sd(s_means)

samplemean
sd_of_s_means

theoretical_se <- popsd /25
theoretical_se
