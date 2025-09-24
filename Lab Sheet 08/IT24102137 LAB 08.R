# 1. Set the working directory
setwd("H:\\SLIIT\\2nd Year\\1st Sem\\PS\\Labs\\LAB 08")

# 2. Import the dataset
data <- read.table("Data - Lab 8.txt", header = TRUE)
head(data)
# Attach the data frame to make the 'Nicotine' column directly accessible
attach(data)


#1.Calculate Population Mean and Standard Deviation ---

n_pop <- length(Nicotine) # Population size
print(n_pop)

# Population Mean
pop_mean <- mean(Nicotine)
print(pop_mean)

# Population Variance
pop_var <- var(Nicotine) * (n_pop - 1) / n_pop 
print(pop_var)

# Population Standard Deviation
pop_sd <- sqrt(pop_var)
print(pop_sd)

# 2. Draw 25 random samples of size 6 (with replacement) and calculate the sample 
#   mean and sample standard deviation for each sample.

# Create empty vectors
sample_means <- c()
sample_sds <- c()


for (i in 1:25) {
  current_sample <- sample(Nicotine, 6, replace = TRUE) 
  
  sample_means[i] <- mean(current_sample)
  sample_sds[i] <- sd(current_sample)
}


#3.Calculate Mean and Standard Deviation of the Sample Means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

print(mean_of_sample_means)
print(sd_of_sample_means)
