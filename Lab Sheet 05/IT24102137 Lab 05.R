
setwd("H:\\SLIIT\\2nd Year\\1st Sem\\PS\\Labs\\LAB 05")

## Step 2: Import the dataset into a dataframe called DeliveryTimes
DeliveryTimes <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

fix(DeliveryTimes)

attach(DeliveryTimes)


## 2. Draw a histogram for deliver times using nine class intervals where the lower limit is 20 and upper limit is 70. Use right open intervals.


histogram <- hist(DeliveryTimes$Time,
                  main = "Histogram for Delivery Times",
                  xlab = "Delivery Time",
                  breaks = seq(20, 70, length = 10),
                  right = FALSE)


##4. Draw a cumulative frequency polygon (ogive) for the data in a separate plot.

#Get cumulative frequency
cum.freq <- cumsum(histogram$counts)

# Create a helper variable for ogive
new <- c()
for(i in 1:length(histogram$breaks)){
  if(i==1){
    new[i] = 0
  } else {
    new[i] = cum.freq[i-1]
  }
}

#Plot the ogive
plot(histogram$breaks, new,
     type = 'l',
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))

#Table of upper class limits with cumulative frequency
cbind(Upper = histogram$breaks, CumFreq = new)

