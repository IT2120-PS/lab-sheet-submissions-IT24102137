##=============================================
## Lab 05 - Exercise
## Registration No: ITXXXXXXX
##=============================================

## Step 1: Set working directory
setwd("H:\\SLIIT\\2nd Year\\1st Sem\\PS\\Labs\\LAB 05")

## Step 2: Import the dataset into a dataframe called DeliveryTimes
DeliveryTimes <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

## View the dataset
fix(DeliveryTimes)

## Attach dataset so we can call columns directly
attach(DeliveryTimes)

##---------------------------------------------
## Question 2: Histogram with 9 classes (20 to 70), right open intervals
##---------------------------------------------

histogram <- hist(DeliveryTimes$Time,
                  main = "Histogram for Delivery Times",
                  xlab = "Delivery Time",
                  breaks = seq(20, 70, length = 10), # 9 classes → need 10 breakpoints
                  right = FALSE)

##---------------------------------------------
## Question 3: Comment on the shape
##---------------------------------------------
# After plotting the histogram, check if it is:
# - Symmetric (bell-shaped)
# - Left-skewed (tail to left)
# - Right-skewed (tail to right)
# - Uniform (flat)
# You need to observe and write this part in your Word document.

##---------------------------------------------
## Question 4: Cumulative Frequency Polygon (Ogive)
##---------------------------------------------

# Step 1: Get cumulative frequency
cum.freq <- cumsum(histogram$counts)

# Step 2: Create a helper variable for ogive
new <- c()
for(i in 1:length(histogram$breaks)){
  if(i==1){
    new[i] = 0
  } else {
    new[i] = cum.freq[i-1]
  }
}

# Step 3: Plot the ogive
plot(histogram$breaks, new,
     type = 'l',
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))

# Step 4: Table of upper class limits with cumulative frequency
cbind(Upper = histogram$breaks, CumFreq = new)

