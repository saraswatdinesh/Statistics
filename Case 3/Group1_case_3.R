rm()
getwd()
options(scipen=999)
wd <- setwd("/Users/dineshsaraswat/Desktop/MSBA-Fall2023-Sem1/BAN-602/Case3")
wd
file_name <- "BAN_602_Case_3.csv"
sample_data <- read.csv(file_name, header= TRUE, sep = ",", stringsAsFactors=F, na.strings="NA", strip.white = TRUE)

#Calculate the mean, median and standard Deviation of each of the samples.
standard_deviation <- sapply(sample_data, sd)
cat("Standard Deviation Values : \n",standard_deviation, "\n")
# Calculate Mean 
mean_value <- sapply(sample_data,mean)
cat("Mean Value of Samples : \n" ,mean_value, "\n")

# Calculate Median of the data

median_value = sapply(sample_data,median)
cat("Median Values : \n",median_value, "\n")


# Problem 2 - 
#Check if the sample data adhere the normal distribution
par(mfrow = c(2, 2))  # Divide the plotting area into 2x2 subplots
for (i in 1:ncol(sample_data)){
  sample <- sample_data[,i]
  qqnorm(sample,main = colnames(sample_data)[i])
  qqline(ppoints(length(sample)), col = "red")
}



#Hypothesis test for all the sample data.
# Population parameters (given)
population_mean <- 12
population_stddev <- 0.21  # Assumed population standard deviation

# Significance level
alpha <- 0.05

# Perform hypothesis tests for each sample
for (i in 1:ncol(sample_data)) {
  sample <- sample_data[, i]
  sample_mean <- mean(sample)
  sample_size <- length(sample)
  
  # Calculate the Z-test statistic
  z <- (sample_mean - population_mean) / (population_stddev / sqrt(sample_size))
  
  # Calculate the p-value (two-tailed)
  if (z <=0) {
    p_value = pnorm(z)*2 # Calculates the lower tail area when z value is less then the 0.5 value as 
  }
  else if (z>0) {
    p_value = (1- pnorm(z))*2
  }
  cat("area under Curve ", p_value, "\n")
  
  
  cat("Sample", i, "Test Results:\n")
  cat("Sample Mean:", sample_mean, "\n")
  cat("Z-Test Statistic:", z, "\n")
  cat("P-Value:", p_value, "\n")
  
  # Make the decision based on the p-value and significance level
  if (p_value <= alpha) {
    cat("Conclusion: Reject the null hypothesis (Ha is supported).\n\n")
  } else {
    cat("Conclusion: Do not reject the null hypothesis (H0 is supported).\n\n")
  }
}


# Check why Sample 3 has Rejection of the Null hypothesis 

q1 <- quantile(sample_data$Sample_3, 0.25)
q3 <- quantile(sample_data$Sample_3, 0.75)
iqr <- q3 - q1

# Define the lower and upper bounds for identifying outliers
lower_bound <- q1 - 1.5 * iqr
upper_bound <- q3 + 1.5 * iqr

# Identify outlier values
outlier_values <- sample_data$Sample_3[sample_data$Sample_3 < lower_bound | sample_data$Sample_3 > upper_bound]
cat("Outlier Value: ", outlier_values, "\n")
boxplot(sample_data$Sample_4, 
        main = "Boxplot for Sample 3",
        ylab = "Values",
        boxwex = 0.5,  # Adjust the width of the box
        outline = TRUE,
        horizontal = FALSE)
#outlier_values <- boxplot_result$out
if (length(outlier_values) > 0) {
  points(rep(1, length(outlier_values)), outlier_values, pch = 19, col = "red")
}
text(rep(1, length(sample_data$Sample_3)), sample_data$Sample_3, labels = sample_data$Sample_3, 
     pos = 3, cex = 0.7, col = "blue")
#points(rep(1, length(outlier_values)), outlier_values, pch = 19, col = "red")


# If population standard Deviation of 0.21 is reasonable. 

assumed_stddev <- 0.21

for (i in 1:ncol(sample_data)){
  sample_sd <- sd(sample_data[,i])
  sample_size <- length(sample_data[,i]) 
  df <- sample_size -1
  chi_square <- ((df* sample_sd^2)/assumed_stddev^2)
  alpha <- 0.05 # Significance level
  # Calculate the critical values
  critical_value_lower <- qchisq(alpha / 2, df, lower.tail = FALSE)
  critical_value_upper <- qchisq(1 - alpha / 2, df, lower.tail = FALSE)
  
  # Calculate the p-value
  p_value <- 2 * (1 - pchisq(chi_square, df))
  if (p_value <= alpha) {
    cat("Reject the null hypothesis: Population standard deviation is different from", assumed_stddev, "\n")
  } else {
    cat("Do not reject the null hypothesis: Population standard deviation is reasonable at", assumed_stddev, "\n")
  }
  
  # Print the chi-square statistic and p-value
  cat("Chi-Square Statistic:", chi_square, "\n")
  cat("P-Value:", p_value, "\n")
}


# 4 Calculate the limits of the samples 
population_mean <- 12
population_stddev <- 0.21
sample_size <- 30
alpha <- 0.05
# Calculate the standard error
SE <- population_stddev / sqrt(sample_size)

# Calculate the critical value (Z)
Z <- qnorm(1 - alpha / 2)
Z

# Calculate the Upper Control Limit (UCL)
UCL <- population_mean + Z * SE

# Calculate the Lower Control Limit (LCL)
LCL <- population_mean - Z * SE

cat("Upper Control Limit (UCL):", UCL, "\n")
cat("Lower Control Limit (LCL):", LCL, "\n")




# Question 5 

population_mean <- 12
population_stddev <- 0.21

# Different significance levels to consider
alphas <- c(0.01, 0.05, 0.10, 0.15, 0.20)

# Perform hypothesis tests for each sample at different alpha levels
for (alpha in alphas) {
  cat("Significance Level (alpha):", alpha, "\n")
  
  for (col_name in colnames(sample_data)) {
    sample <- sample_data[[col_name]]
    
    # Perform a two-tailed t-test
    t_test_result <- t.test(sample, mu = population_mean, alternative = "two.sided")
    
    # Print the results
    cat("Sample:", col_name, "\n")
    cat("  Test Statistic:", t_test_result$statistic, "\n")
    cat("  P-Value:", t_test_result$p.value, "\n")
    
    # Determine whether to reject the null hypothesis based on alpha
    if (t_test_result$p.value <= alpha) {
      cat("  Null Hypothesis Rejected: There is evidence of a difference.\n")
    } else {
      cat("  Null Hypothesis Not Rejected: No significant evidence of a difference.\n")
    }
    cat("\n")
  }
}


# Graph plotting -
sample_means_222 <- c(11.9587, 12.02867, 11.889, 12.08133)
UCL_222 <- 12.0751475172
LCL_222 <- 11.9248524828

# Create a sequence of sample numbers
sample_numbers <- 1:length(sample_means_222)

# Create a plot
plot(sample_numbers, sample_means_222, type = "o", col = "black", pch = 19, ylim = c(11.8, 12.2),
     xlab = "Sample Number", ylab = "Sample Mean", main = "Process Control Chart")

# Add lines for UCL, LCL, and population mean
abline(h = c(UCL_222, LCL_222), lty = 2, col = c("red", "green"))
abline(h = population_mean, lty = 2, col = "blue")

# Add a legend
legend("topright", legend = c("UCL", "LCL", "Population Mean"), lty = 2, col = c("red", "green", "blue"))
theme_minimal()

