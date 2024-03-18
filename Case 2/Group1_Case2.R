# Author : Dinesh Saraswat, Joel Saetern, Kyle McGonigle, Abhinav Baad

#remove all old stuff
rm()
rm(list=ls(all=TRUE))

# Given that we have z value as  = 0.015 to the left of lower bound we need the vz score. 

onefive_zscore <- qnorm(0.015)

# Establish the bound 

lower_bound <- 7000
upper_bound <- 38000
mean <- 22500

z_score <- onefive_zscore
z_score
# Standard Deviation 
sd <- (lower_bound - mean)/z_score

cat(round(sd,4))

#calculate variance 
variance <- sd^2
print (variance)

#draw normal distribution 

x <- seq(7000, 38000, by = 1000)
y <- dnorm(x, mean, sd)

# Code to avoid scientific notation on y axis

options(scipen = 999)

plot(x,y,type="l", lwd = 2, col = "blue", main = "Normal Distribution", xlab = "Units", ylab = "Probability Density")

abline(v = mean, col = "red", lwd = 2)

text(mean, max(y), paste("Mean: ", mean), col = "red", pos = 4)
text(mean, max(y) * 0.9, paste("Variance:", round(variance, 2)), col = "green", pos = 4)

################


# z-score function
zscore.fun <- function(x){
  return((x-mean)/sd)
}


#2 calculate z scores to find percentages
z_13 <- zscore.fun(13000)
z_17 <- zscore.fun(17000)
z_26 <- zscore.fun(26000)
z_29 <- zscore.fun(29000)

#find percentages from z scores
z_13_p <- 1- pnorm(z_13)
z_17_p <- 1- pnorm(z_17)
z_26_p <- 1- pnorm(z_26)
z_29_p <- 1- pnorm(z_29)



#Print each percentage 
message <- paste("The probability of 13,000 stock out is,", z_13_p)
cat(message, "\n")
message <- paste("The probability of 17,000 stock out is,", z_17_p)
cat(message, "\n")
message <- paste("The probability of 26,000 stock out is,", z_26_p)
cat(message, "\n")
message <- paste("The probability of 29,000 stock out is,", z_29_p)
cat(message, "\n")


#### Dinesh Code for Problem 3 ####

ordered_quantity <- as.numeric(list(13000,17000,26000,29000))
actual_sell_quantity <- as.numeric(list(12000, 22500, 33000))
selling_price <- 29
cost_price <- 17
discount_selling_price <- 7

profit_per_unit <- selling_price - cost_price
loss_per_unit <- cost_price - discount_selling_price

profit.fun <- function(ordered_qty, sold_qty) {
  if(ordered_qty>= sold_qty) {
    
    profit = (sold_qty * profit_per_unit) - (ordered_qty - sold_qty)*loss_per_unit
    return(profit)    
  } else if(ordered_qty < sold_qty){
    profit = ordered_qty * profit_per_unit
    return(profit)
    
  }
  
}


# going through the permutations with the profit function created
i<-1
j<-1

while (i<length(ordered_quantity)+1){
  j<-1
  while(j<length(actual_sell_quantity)+1){
    print(paste("Ordered Quantity:",ordered_quantity[i],"Quantities reportedly ",actual_sell_quantity[j],"Profit $:",profit.fun(ordered_quantity[i],actual_sell_quantity[j])))
    j<- j + 1
  }
  i <- i + 1
}





#4 

nine2_zscore <- qnorm(.92)
x = mean + (nine2_zscore*sd)
rounded_up <- ceiling(x)
print(rounded_up)
print(paste("ORder qty under this policy",rounded_up))



orders2 <- as.numeric(list(rounded_up))
print(orders2)
sold2 <- as.numeric(list(12000,22500,33000))




i<-1
j<-1

while (i<length(orders2)+1){
  j<-1
  while(j<length(sold2)+1){
    print(paste("Ordered Quantity:",orders2[i],"Quantities reportedly ",sold2[j],"Profit $:",profit.fun(orders2[i],sold2[j])))
    j<- j + 1
  }
  i <- i + 1
}



# Number 5 

# Expecting highest profits and lowest chance of loss. 
# Values used in for the probability in the program  70, 75, 77, 80, 82, 85, 87, 90, 92,95 to calculate profit and loss
# I did it manually for all the listed values above to better understand the flow and value. Could have written a loop
# however wanted to check the data more closely. The results of all the values are printed in the excel after execution 


nine3_zscore <- qnorm(.70)
x3 = mean + (nine3_zscore*sd)
rounded_up3 <- ceiling(x3)
print(rounded_up3)
print(paste("Order qty under this policy",rounded_up3))



orders <- as.numeric(list(rounded_up3))
print(orders)
sold <- as.numeric(list(12000,22500,33000))


i<-1
j<-1

while (i<length(orders)+1){
  j<-1
  while(j<length(sold)+1){
    print(paste("Ordered Quantity:",orders[i],"Quantities reportedly ",sold[j],"Profit $:",profit.fun(orders[i],sold[j])))
    j<- j + 1
  }
  i <- i + 1
}


