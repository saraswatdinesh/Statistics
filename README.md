# Statistics
Case studies and projects as part of the statistics course


**Case 1 ->**

The pursuit of a higher education degree in business is now international. A survey shows that more and more Asians choose the Master of Business Administration (MBA) degree route to corporate success. As a result, 
the number of applicants for MBA courses at Asia-Pacific schools continues to increase. Across the region, thousands of Asians show an increasing willingness to temporarily shelve their careers and spend two years 
pursuing a theoretical business qualification. Courses in these schools are notoriously tough and include economics, banking, marketing, behavioral sciences, labor relations, decision-making, strategic thinking, 
business law, and more. The data set BAN_602_Case_1 shows some of the characteristics of the leading Asia-Pacific business schools.

Questions to be answered -
1. Include a summary (mean, median, standard deviation, variance, range, and interquartile range) for each quantitative variable in the dataset. Use a table to display the quantitative variables' summary measures in one place.
What insights do these descriptive statistics provide regarding the Asia-Pacific business schools? 
2. Summarize the data to compare the following:
  a. Mean differences between domestic and foreign tuition for schools requiring versus not requiring a GMAT. 
  b. Any difference between mean starting salaries for schools requiring versus not requiring work experience.
  c. Any difference between mean starting salaries for schools requiring versus not requiring English tests. 
3. Does the starting salary appear to be related to domestic tuition? Does starting salary appear to be associated with foreign tuition? Justify using both visual and numerical measures.
4. Draw a boxplot to summarize the starting salary data graphically. Identify the first, second, and third quartiles from the boxplot. Are there any outliers?

Approach ->

Processed the data using the R and get the mean, median, IQR, variance, range, and outliers. 
Calculate the mean difference between the schools requiring GMAT or not and domestic versus foreign tuition. Use the tabular approach to reveal more insights. 
Calculate the mean difference in the starting salaries among the schools requiring work exp vs not
Calculate the mean difference among the schools that require English tests vs those that do not require them. 


Get the correlation coefficient to check if we have any relation between the starting salary wrt to domestic tuition cost. Is it associated with foreign tuition or not? Draw the scatter plot of starting salary vs domestic 
tuition and foreign tuition. It should follow some mathematical trend 
on the X-axis and Y-axis. 


Draw the boxplot to identify the outlier data points that fall after the 1.5 times the IQR.

Refer to the Word document for the detailed report. ( Please note we have used the formula to calculate the population mean however we should have used the default formula for the mean value calculation as 
it is the entire population in contention of the scope of the problem)


**Case 2 ->**

Specialty Toys
Specialty Toys, Inc., sells a variety of new and innovative children’s toys. Management
learned that the preholiday season is the best time to introduce a new toy, because many families
use this time to look for new ideas for December holiday gifts. When Specialty discovers a new
toy with good market potential, it chooses an October market entry date.
In order to get toys in its stores by October, Specialty places onetime orders with its
manufacturers in June or July of each year. Demand for children’s toys can be highly volatile. If a
new toy catches on, a sense of shortage in the marketplace often increases the demand to high
levels and large profits can be realized. However, new toys can also flop, leaving Specialty stuck
with high levels of inventory that must be sold at reduced prices. The most important question the
company faces is deciding how many units of a new toy should be purchased to meet anticipated
sales demand. If too few are purchased, sales will be lost; if too many are purchased, profits will
be reduced because of low prices realized in clearance sales.
For the coming season, Specialty plans to introduce a new product called Weather Teddy.
This variation of a talking teddy bear is made by a company in Taiwan. When a child presses
Teddy’s hand, the bear begins to talk. A built-in barometer selects one of five responses that predict
the weather conditions. The responses range from “It looks to be a very nice day! Have fun” to “I
think it may rain today. Don’t forget your umbrella.” Tests with the product show that, even though
it is not a perfect weather predictor, its predictions are surprisingly good. Several of Specialty’s
managers claimed Teddy gave predictions of the weather that were as good as many local
television weather forecasters.
As with other products, Specialty faces the decision of how many Weather Teddy units to
order for the coming holiday season. Members of the management team suggested order quantities
of 13,000, 17,000, 26,000, or 29,000 units. The wide range of order quantities suggested indicates
considerable disagreement concerning the market potential. The product management team asks
you for an analysis of the stock-out probabilities for various order quantities, an estimate of the
profit potential, and to help make an order quantity recommendation. Specialty expects to sell
Weather Teddy for $29 based on a cost of $17 per unit. If inventory remains after the holiday
season, Specialty will sell all surplus inventory for $7 per unit. After reviewing the sales history
of similar products, Specialty’s senior sales forecaster predicted an expected demand of 22,500
units with a 0.97 probability that demand would be between 7,000 units and 38,000 units.

Case Report
Prepare a case report that addresses the following issues and recommends an order quantity for the
Weather Teddy product.
1. Use the sales forecaster’s prediction to describe a normal probability distribution that can
be used to approximate the demand distribution. Sketch the distribution and show its mean
and variance. 
2. Compute the probability of a stockout for the order quantities suggested by members of the
management team. 
3. Compute the projected profit for the order quantities suggested by the management team
under three scenarios: worst case in which sales=12,000 units, most likely case in which
sales=22,500 units, and best case in which sales=33,000 units. 
4. One of Specialty’s managers felt that the profit potential was so great that the order quantity
should have a 92% chance of meeting demand and only an 8% chance of any stockouts.
What quantity would be ordered under this policy, and what is the projected profit under
the three sales scenarios?
5. Provide your own recommendation for an order quantity and note the associated profit
projections. Provide a rationale for your recommendation.

Approach - 
The stockouts happen when we have more sales than number of units available in the stock. Hence, to get the probability of stockout happening if we have ordered the units as per management committees’ suggestions of 13000, 17000, 26000 and 29000 can be calculated by getting the probability of sales less then suggested quantity and then subtracting from 1. 

The Projected Profit based on the number of unit sales as 12000 units, most likely case 22500 and best case of 33000 units sale. 

In order to determine what should be the order quantity to have only 8% chances of stockout and 92% chances of no inventory stockouts, we can use the below formula –

X = mean + (std * z value)

Here std  Standard Deviation is 7142.56 (refer section 1)
Z value for 92% probability is  1.405 

With the above formula and values provided it can be calculated that expected value is 32535.81 which can be rounded up to 32536 units. 

Based on the ordered units of 32536, the projected profit for sale of 12000, 22500 and 33000 units is mentioned in the below table. 

Units ordered	Units Sold	Total Profit 
32536	12000	-61360
32536	22500	169640
32536	33000	390432


It can be inferred that in this case when sales are around the number or approximate to the number of units ordered of 32536, we have the highest profit of $390432. However, if the sale is much less then or worst it will lead to hue inventory being sold at discounted price leading to a loss of $61360.

Recommendation- 

In order to minimize any losses and still make the most revenue if the sales volume favors, we recommend around order value of 26246 units. We arrived at this number as we calculated the quantities of no stockout and ran it through our profit function with the three levels of units sold.  If you see the chart below, this covers our bases of not losing any money in the low sales scenario, offers comparable mid-level and max level profit for those sales volume. With 12000 sales our profit would be 1540 with 22500 sales our profit would be 232540 with 33000 sales our profit would be 314952.




**Case 3 ->**

Quality  Associates,  Inc.,  a  consulting  firm,  advises  its  clients  about  sampling  and  statistical 
procedures that can be used to control their manufacturing processes. In one particular application, 
a client gave Quality Associates a sample of 800 observations taken during a time in which that 
client’s process was operating satisfactorily. The sample standard deviation for these data was 
0.21; hence, with so much data, the population standard deviation was assumed to be 0.21. Quality 
Associates then suggested that random samples of size 30 be taken periodically to monitor the 
process on an ongoing basis. By analyzing the new samples, the client could quickly learn whether 
the  process  was  operating  satisfactorily.  When  the  process  was  not  operating  satisfactorily, 
corrective action could be taken to eliminate the problem. The design specification indicated the 
mean for the process should be 12. The hypothesis test suggested by Quality Associates follows. 
 
            H0: μ = 12 
Ha: μ ≠ 12 
 
Corrective action will be taken any time H0 is rejected. 
 
The sample datasets collected at hourly intervals during the first day of operation of the new 
statistical  process  control  procedure  are  provided  in  the  accompanying  data  file 
BAN_602_Case_3.csv. 
 
 
Report 
 
Prepare a case report that addresses the following. 
 
1. Provide summary statistics (mean, median, standard deviation) of each of the four sample 
datasets separately in one table. 
2. Conduct a hypothesis test for each sample at a = 0.05. Discuss your findings and determine 
what action, if any, should be taken. Provide the test statistic and p-value for each test. 
3. Does the assumption of 0.21 for the population standard deviation appear reasonable? 
4. Compute limits for the sample mean x̄  around μ = 12 such that, as long as a new sample 
mean is within those limits, the process will be considered to be operating satisfactorily. If 
x̄  exceeds the upper limit or if x̄  is below the lower limit, corrective action will be taken. 
These limits are referred to as upper and lower control limits for quality control purposes. 
5. Discuss the implications of changing the level of significance to a larger value or a smaller 
value. What type of mistakes or errors could go up if the level of significance is increased? 
What could happen if the level of significance is decreased? 
6. Plot the sample means of the four sample datasets in a chart, with the population mean, 
upper control limit and lower control limit displayed as parallel horizontal lines. This chart, 
aka process control chart, helps us understand if a process is in statistical control. 

Approach -

1.	Summary Statistics of Sample Data in one table

Derivation	Sample1	Sample 2	Sample 3	Sample 4
Mean	11.9587	12.0287	11.8890	12.0813
Median	11.9550	12.0250	11.9200	12.0800
Standard Deviation	0.2204	0.2204	0.2072	0.2062

The hypothesis test suggests by quality associates follow. 
H 0: μ = 12
  H a: μ ≠ 12	
Level of confidence   alpha = 0.05 
Population Mean = 12
Population Standard Deviation = 0.21
Sample Size of all samples = 30 each

To cross validate the sample data we ran qq plot and noticed if the sample data follows linear trajectory to confirm if the data is normally distributed or not. Histogram also showed the similar observation, however we are just plotting qq.


Based on above data points and observation we can calculate the Test statistics and its area outside tail region to determine if a null hypothesis can be a reject or do not reject

Test Statistic = (sample mean – population mean)/ (population standard Deviation/ sqrt (sample size))

With the above value we can calculate the area outside the tail regions called a p-value. If the p-value is greater than 0.05 (level of confidence) we can say that we do not reject the null hypothesis and if its <. 0.05 we can say that we can reject the null hypothesis. 

Below if the tabular representation of the information.

Sample	Sample Mean 	Z-test Statistic	p-Value (Area outside the tails)	If greater than alpha 0.05	Hypothesis Conclusion
Sample1	11.9587	-1.0781	0.2810	Yes	Do not reject the null hypothesis (H0 is supported).
Sample2	12.0287	0.7477	0.4546	Yes	Do not reject the null hypothesis (H0 is supported).
Sample3	11.8890	-2.8951	0.0038	No	Reject the null hypothesis (Ha is supported)
Sample4	12.0813	2.1213	0.0339	No	Reject the null hypothesis (Ha is supported)

As evident from the results it is recommended to take corrective actions on sample 3 and sample 4. Another analysis on sample 3 data reveals that it has outlier data points as well, however we could not find any such outlier data in any of the other samples.  
Note- refer the R-code to check the boxplot of sample 3 to justify our claim of outlier data point.


3.	Does a Population standard deviation of 0.21 seem reasonable?

Surface level Approach 
Given the 4 samples produced a standard deviation in the range of 0.2061 to 0.2203 I think we can say this is a good estimation. Given the consistency of the results among the 4 samples of the same size it seems like this is a pretty good estimate.

Systematic Approach
To achieve it we can validate the above assumption we can define the test hypothesis as 

H0 - null hypothesis as population standard deviation of 0.21
Ha - as population standard deviation not equal to 0.21.

We define the level of significance as 0.05 to assume 95% of confidence in the sample data. 

Now calculating the test statistics using chi square distribution 

Chi-square X2 = ((n-1). s*s) /sigma square
  n is the sample size
  S is sample standard deviation
  Sigma is assumed population distribution.
We can calculate the p-value for each and if it’s less than the value of the 1-level of significance we can reject the null hypothesis.

Here is my output →
P-value = 2*(1- probability at chi-square at n-1 degree of freedom)

Do not reject the null hypothesis: Population standard deviation is reasonable at 0.21. 
Chi-Square Statistic: 31.9308
P-Value: 0.6458 
Do not reject the null hypothesis: Population standard deviation is reasonable at 0.21. 
Chi-Square Statistic: 31.9308 
P-Value: 0.6458 
Do not reject the null hypothesis: Population standard deviation is reasonable at 0.21. 
Chi-Square Statistic: 28.2238 
P-Value: 1.0119 
Do not reject the null hypothesis: Population standard deviation is reasonable at 0.21. 
Chi-Square Statistic: 27.9353 
P-Value: 1.0427

As the outcome suggests, it's reasonable to assume the population standard deviation of 0.21.


4.	Lower Limit and Upper Limit for quality control purposes

Limit can be calculated by below formula – 

  Population Mean +- standard error * z value of alpha/2 
  
Where Standard error is population standard deviation / sqrt of sample size. 

With above rule the calculated lower limit and upper limit of each sample is detailed below. As we can notice the sample mean of Sample 3 and 4 falls out of bounds of lower control limit and upper control limit. 

Upper Control Limit (UCL): 12.0751
Lower Control Limit (LCL): 11.9248

5.	Implications of Changing the level of Significance 

Theoretically, it is observed that with a lower alpha (level of significance) we are less likely to reject the null hypothesis leading to lower Type 1 error and by increasing the level of significance we are more likely to reject the null hypothesis leading to higher type 1 type error. 

Below is the analysis of hypothesis testing for different confidence levels on the dataset provided to practically see it in action-


Significance Level (alpha): 0.01 
  Sample: Sample_1 
  Test Statistic: -1.0274 
  P-Value: 0.3127 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Sample: Sample_2 
  Test Statistic: 0.7125 
  P-Value: 0.4818 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Sample: Sample_3 
  Test Statistic: -2.9346 
  P-Value: 0.0065 
  Null Hypothesis Rejected: There is evidence of a difference.

Sample: Sample_4 
  Test Statistic: 2.1614 
  P-Value: 0.0391 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Significance Level (alpha): 0.05 
  Sample: Sample_1 
  Test Statistic: -1.0274 
  P-Value: 0.3127 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Sample: Sample_2 
  Test Statistic: 0.7125 
  P-Value: 0.4818 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Sample: Sample_3 
  Test Statistic: -2.9346 
  P-Value: 0.0065 
  Null Hypothesis Rejected: There is evidence of a difference.

Sample: Sample_4 
  Test Statistic: 2.1614 
  P-Value: 0.0391 
  Null Hypothesis Rejected: There is evidence of a difference.


Significance Level (alpha): 0.1 
  Sample: Sample_1 
  Test Statistic: -1.0274 
  P-Value: 0.3127 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Sample: Sample_2 
  Test Statistic: 0.7125 
  P-Value: 0.4818 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Sample: Sample_3 
  Test Statistic: -2.9346 
  P-Value: 0.0065 
  Null Hypothesis Rejected: There is evidence of a difference.

Sample: Sample_4 
  Test Statistic: 2.1614 
  P-Value: 0.0391 
  Null Hypothesis Rejected: There is evidence of a difference.

Significance Level (alpha): 0.15 
  Sample: Sample_1 
  Test Statistic: -1.0274 
  P-Value: 0.3127 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Sample: Sample_2 
  Test Statistic: 0.7125 
  P-Value: 0.4818 
  Null Hypothesis Not Rejected: No significant evidence of a difference.

Sample: Sample_3 
  Test Statistic: -2.9346 
  P-Value: 0.0065 
  Null Hypothesis Rejected: There is evidence of a difference.

Sample: Sample_4 
  Test Statistic: 2.1614 
  P-Value: 0.0391 
  Null Hypothesis Rejected: There is evidence of a difference.

Also, we understand that when the population mean moves closer to the null hypothesis value, we have higher chances of making Type 2 errors. Since, it’s not in the scope to change the mean value we will just stick with Type 1 error analysis.


**Case 4 ->**

TourisTopia Travel (Triple T) is an online travel agency that specializes in trips to exotic locations 
around  the  world  for  groups  of  ten  or  more  travelers.  Triple  T’s  marketing  manager  has  been 
working on a major revision of the homepage of Triple T’s website. The content for the homepage 
has been selected and the only remaining decisions involve the selection of the background color 
(white, green, or pink) and the type of font (Arial, Calibri, or Tahoma). 
 
Triple  T’s  IT  group  has  designed  prototype  homepages  featuring  every  combination  of  these 
background colors and fonts, and it has implemented computer code that will randomly direct each 
Triple  T  website  visitor  to  one  of  these  prototype  homepages.  For  three  weeks,  the  prototype 
homepage to which each visitor was directed and the amount of time in seconds spent at Triple 
T’s website during each visit were recorded. Ten visitors to each of the prototype homepages were 
then  selected  randomly;  the  complete  data  set  for  these  visitors  is  available  in  the  data  file 
BAN_602_Case_4.csv. 
 
Triple T wants to use these data to determine if the time spent by visitors to Triple T’s website 
differs by background color or font. It would also like to know if the time spent by visitors to the 
Triple T website differs by different combinations of background color and font.  
 
Report  
 
Prepare a case report that addresses the following. 
 
1. Has Triple T used an observational study or a controlled experiment? Explain.  
2. Use the data from Triple T’s study to test the hypothesis that the time spent by visitors 
to the Triple T website is equal for the three background colors. Include both the factors 
and their interaction in the ANOVA model, and use a 0.05 level of significance. State 
the  hypotheses  both  in  words  and  mathematically,  compute  the  test  statistic  and  p-
value, explain the rejection rule and state the conclusion. 
3. Use the data from Triple T’s study to test the hypothesis that the time spent by visitors 
to the Triple T website is equal for the three fonts. Include both the factors and their 
interaction  in  the  ANOVA  model,  and  use  a  0.05  level  of  significance.  State  the 
hypotheses both in words and mathematically, compute the test statistic and p-value, 
explain the rejection rule and state the conclusion.
4. Use the data from Triple T’s study to test the hypothesis that time spent by visitors to 
the Triple T website is equal for the nine combinations of background color and font. 
Include both factors and their interaction in the ANOVA model, and use a 0.05 level 
of significance. State the hypotheses both in words and mathematically, compute the 
test statistic and p-value, explain the rejection rule and state the conclusion. 
5. What is your overall recommendation?  
 

 Approach -

 1.	TourisTopia Travel (Triple T) has conducted a controlled experiment to understand if the background color and fonts of the website impacts the time spent by random users. They have intentionally manipulated two factors i.e., font and background color to observe the impact on the factor of interest i.e., time spent on website. This controlled setup will allow Triple T to draw conclusion about if the changes in the independent variable i.e., font and background color impacts the dependent variable i.e., the time spent on website. 
 
 
 As we have the data collected from random users (10 for each category combination), we can conduct an analysis of variability to determine if the dependent variables impact the dependent variable. 
 
 There are two factors background color and fonts let Factor A = Background Color (White, Green, and Pink) and Factor B = font (Ariel, Calibri, Tahoma) with response variable being time spent in second. In this case we can classify the font as the treatments and blocks being the colors. We have 10 replications of each data category with about total number of observations to 90 (10* 3*3).
 
 With the above information we could run the ANOVA model to get the mean square of factors of each sample population, and its interaction as well. We can compute the ANOVA table details as below with the data.
 
 ANOVA Table
 
    Sum of Squares	Degree of Freedom	Mean Square	F-Value (Mean Square / MSE) also called test Statistic	p Value
 Factor A (Background) (3)	SSA = 24246	3-1 = 2	MSA= 12123	12123 / 2109 = 5.75	0.0046
 Factor B (Font) (3)	SSB= 22426	3-1 = 2	MSB = 11213	11213/2109 = 5.318	0.0068
 Interaction (Background: Font)	SSAB = 12182	(3-1) * (3-1) = 4	MSAB = 3046	3046/2109 = 1.444	0.2269
 Error Within	SSE= 170789	3*3*(10-1) = 81	MSE = 2109	 	 
 Total	SST = 229643	89	 	 	 
 
 
 SSA is the sum of squares of factors of A and SSB is the sum of Square of factor B and SSAB is the Sum of square of factors of interaction of AB Factors. SSE is sum of Square due to Error and SST is the total of SSA, SSB, SSAB and SSE. 
 
 Mean Squares can be calculated as = Sum of Square divided by Degree of Freedom.  
 
 F Value can be calculated as Mean Square divided by Mean Square of Error. 
 
 
 2.	We can use the above the ANOVA table to determine where the three background colors changes have any impact on the time spent of the users on the website or not. For this to conclude we can do the null hypothesis that the background color does not impact the time-spent on the website. Hence our H0: Null Hypothesis is Mean of time spent of all users are equal which means it is same or closer to the total population mean as well. The level of confidence can be considered as 0.05 (alpha) for this analysis. 
 
 H0: Mean Time is same for all the background i.e., µ(white) = µ(green)=µ(pink)
 Ha: The mean time is not same for all the background i.e., µ(white) <> µ(green)<>µ(pink)
 
 Now from the ANOVA table we see that the F-function value for background color is 5.75. This means that area over the tail F-function for normally distributed sample data is 0.0046 which is less than the 0.05 which suggest rejecting the null hypothesis i.e. It seems that the background color changes have some level of impact on the time spent by the user on the website. 
 
 3.	Similarly, if we test to see if font changes have any impact on the user’s time spent on the website, we can check for the factor impact on dependent variable and define the test hypothesis no changes in the mean time spent by users on website for all 3 fonts should be equal and alternative hypothesis as there is a difference in the mean time spent is greater than the level of confidence i.e. 0.05.
 
 H0: µ(Arial) = µ(Calibri)=µ(Tahoma)
 Ha: At least one of µ(Arial), µ(Calibri), µ(Tahoma) differ
 
 From the ANOVA table F value is 5.318 which translates to the p-value of 0.0068 which is significantly lower than the 0.05 and hence we can good evidence of rejecting the null hypothesis and conclude that changing font size changes user behaviors in certain manner. 
 
 4.	Clearly it is evident from the above analysis that font and background changes on individual level has some level of influence on the user’s time spent behavior. However, we should check does the combination of both have any level of influence. To test this, we can conduct the hypothesis test and classify that the mean of all the 9 combinations should be same and its alternative hypothesis as we have some change in the mean. This is shown in the ANOVA table as well in the row Interaction (Background: Font). 
 
 So, we can define the test hypothesis as 
 
 H0: The mean time spent by people on the Triple T website homepage is equal for
 all nine interactions by considering both Factors (Factor A, Factor B)
 
 Ha: The mean time spent by people differs for nine combinations by considering both factors
 (Factor A, Factor B)
 
 Now if we check the P value from the ANOVA table for interaction, we have a value of 0.2269 which is higher than 0.05 of level of confidence. This means that we Fail to reject the null hypothesis and suggests that the mean time spent is similar for all the 9 factor combinations.
 
 5.	Now we have the insights which suggests that the background changes and font changes individually influence the user time spent, we can consider changing the background color and font to the one which has the higher mean user time spent. 
 
 
 Color	Font	Mean	Standard Deviation
 White	Ariel	310.4	41.9741
 White	Calibri	252.5	49.0334
 White	Tahoma	251.5	18.4165
 Green	Ariel	252.9	49.3884
 Green	Calibri	241	49.3884
 Green	Tahoma	249.2	43.4813
 Pink	Ariel	253.2	49.0641
 Pink	Calibri	234.9	49.0641
 Pink	Tahoma	206.4	28.6170
 
 Based on the mean time spent and standard deviation, the "White Background with Ariel Font" combination appears to have the highest mean time spent and relatively low variability, making it a good choice to maximize visitor engagement. However, we may also consider "White Background with Calibri Font" or "White Background with Tahoma Font" if we want alternatives with reasonable mean times and different aesthetics.
 
 We can continue to monitor the user engagement over the period and make changes as per new data when available. 
 
