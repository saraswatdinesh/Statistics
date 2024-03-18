#BAN 602 Joel Saetern
#Homework 1

#read in csv with headers comma seperated
df <-read.csv("/Users/joelsaetern/Code/R/BAN_602_Case_1.csv",header = TRUE, sep = ",", stringsAsFactors=FALSE, check.names=FALSE)

#check data
head(df)
colnames(df)
print(sapply(df, class))


#convert columns
df$`Domestic_Tuition_$` <- as.numeric(gsub(",", "", df$`Domestic_Tuition_$`))
df$`Foreign_Tuition_$` <- as.numeric(gsub(",", "", df$`Foreign_Tuition_$`))
df$`Starting_Salary_$` <- as.numeric(gsub(",", "", df$`Starting_Salary_$`))

#function for statistics
multi.fun <- function(x) {
  c(mean = mean(x), median = median(x), sd = sd(x), var = var(x), range = range(x), iqr = IQR(x))
}
                        
# Summary Statistics
mapply(multi.fun,df[c(2:7,11)])
summary <- mapply(multi.fun,df[c(2:7,11)])

#filter - gmat vs no gmat [domestic / foreign tution]
gmat_yes <- df[df$GMAT_Reqd == "Yes",]
df_gmat_yes <- mapply(mean,gmat_yes[c(4,5)])
df_gmat_yes[c(3)] <- (df_gmat_yes[1]-df_gmat_yes[2])
names(df_gmat_yes)[3] = "Cost Difference"

gmat_no <- df[df$GMAT_Reqd == "No",]
df_gmat_no <- mapply(mean,gmat_no[c(4,5)])
df_gmat_no[c(3)] <- (df_gmat_no[1]-df_gmat_no[2])
names(df_gmat_no)[3] = "Cost Difference"

df_gmat = df_gmat_yes
df_gmat <- rbind(df_gmat,df_gmat_no)
print(df_gmat)

#filter - work exp vs no work exp [starting salary]
work_yes <- df[df$Work_Experience_Years == "Yes",]
df_work_yes <- mapply(mean,work_yes[c(11)])

work_no <- df[df$Work_Experience_Years == "No",]
df_work_no <- mapply(mean,work_no[c(11)])

df_work = df_work_yes
df_work <- rbind(df_work,df_work_no)
print(df_work)

#filter - english test vs no english test [starting salary]
eng_yes <- df[df$English_Test_Reqd == "Yes",]
df_eng_yes <- mapply(mean,eng_yes[c(11)])

eng_no <- df[df$English_Test_Reqd == "No",]
df_eng_no <- mapply(mean,eng_no[c(11)])

df_eng = df_eng_yes
df_eng <- rbind(df_eng,df_eng_no)
print(df_eng)

# domestic tuition versus starting salary - return scatter - r2
# domestic tuition comparison
dom_cor <- cor(df$`Starting_Salary_$`,df$`Domestic_Tuition_$`)
cor1 <- paste("Correlation Coefficient: ",dom_cor)
plot(x=df$`Domestic_Tuition_$`,y=df$`Starting_Salary_$`, main=cor1)
line1 <- lm(df$`Starting_Salary_$`~df$`Domestic_Tuition_$`)
abline(line1, col="blue", lty=2)

print(cor1)

# foreign tuition comparison
for_cor <- cor(df$`Starting_Salary_$`,df$`Foreign_Tuition_$`)
cor2 <- paste("Correlation Coefficient: ",for_cor)
plot(x=df$`Foreign_Tuition_$`,y=df$`Starting_Salary_$`, main = cor2)
line2 <- lm(df$`Starting_Salary_$`~df$`Foreign_Tuition_$`)
abline(line2, col="blue", lty=2)

print(cor2)

#boxplot starting salary
outliers1 <- boxplot.stats(df$`Starting_Salary_$`)$out
outliers1 <- ncol(outliers1)
outliers1[outliers1=='NULL'] <- 0
print(outliers1)
outliers2 <- paste("Outliers: ",outliers1)
boxplot(df$`Starting_Salary_$`, ylab='starting salary', xlab=outliers2)

