rm(list=ls(all=TRUE)) 
setwd("/Users/dineshsaraswat/Desktop/MSBA-Fall2023-Sem1/BAN-602/Case4")
install.packages("agricolae")
library(agricolae)

# Read the data from the csv file
file_name <- "BAN_602_Case_4.csv"

data <- read.csv(file_name, header= TRUE, sep = ",", stringsAsFactors=F, na.strings="NA", strip.white = TRUE)

anova_op2 <- aov(Time_in_seconds~Background*Font,data)
summary(anova_op2)

white_color_ariel <- data[data$Background=="white background" & data$Font=="Ariel",]
white_color_calibri <- data[data$Background=="white background" & data$Font=="Calibri",]
white_color_tahoma <- data[data$Background=="white background" & data$Font=="Tahoma",]
green_color_ariel <- data[data$Background=="green background" & data$Font=="Ariel",]
green_color_calibri <- data[data$Background=="green background" & data$Font=="Calibri",]
green_color_tahoma <- data[data$Background=="green background" & data$Font=="Tahoma",]
pink_color_ariel <- data[data$Background=="pink background" & data$Font=="Ariel",]
pink_color_calibri <- data[data$Background=="pink background" & data$Font=="Calibri",]
pink_color_tahoma <- data[data$Background=="pink background" & data$Font=="Tahoma",]




cat(mean(white_color_ariel$Time_in_seconds), sd(white_color_ariel$Time_in_seconds))
cat(mean(white_color_calibri$Time_in_seconds), sd(white_color_calibri$Time_in_seconds))
cat(mean(white_color_tahoma$Time_in_seconds), sd(white_color_tahoma$Time_in_seconds))
cat(mean(green_color_ariel$Time_in_seconds), sd(green_color_ariel$Time_in_seconds))
cat(mean(green_color_calibri$Time_in_seconds), sd(green_color_ariel$Time_in_seconds))
cat(mean(green_color_tahoma$Time_in_seconds), sd(green_color_tahoma$Time_in_seconds))
cat(mean(pink_color_ariel$Time_in_seconds), sd(pink_color_ariel$Time_in_seconds))
cat(mean(pink_color_calibri$Time_in_seconds), sd(pink_color_ariel$Time_in_seconds))
cat(mean(pink_color_tahoma$Time_in_seconds), sd(pink_color_tahoma$Time_in_seconds))

#posthoc <- TukeyHSD(anova_op2)

#print(posthoc)



