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


Case 2 -->

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



