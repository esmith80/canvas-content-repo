---
uuid: 197229a3-1d03-4d41-8fe2-2c7d9408f905
duration: 15
---

## Identifying Outliers in Cardio Customers 🏃‍♀️

You work as marketing at RunRun, a company disrupting the indoor fitness industry. You want to do some analysis on your customers for the three models of treadmills that you sell to better define the target market for each. You've collected the proper data set, now it's time to explore it with statistics. 

> #### Instruction
> Download and open the file [cardiogoodfitness.xlsx](https://www.dropbox.com/s/zfr6nr6unjsl15a/CardioGoodFitness.xlsx?dl=1). 

This data file provides information about the purchasers of our 3 different treadmill products `TM195`, `TM498`, and `TM798` including:

- their gender
- age
- years of education
- relationship status
- annual household income
- average number of times the customer plans to use the treadmill each week
- average number of miles the customer expects to walk/run each week
- self-rated fitness on scale of 1 to 5, where 1 is poor shape and 5 is excellent shape. 

Before continuing, look at the data and think about what we might want to calculate or plot to better understand the data set.
 
## Descriptive Statistics

It's always a good idea to start with descriptive statistics. This data set contains several columns of categorical data, but we can quickly calculate the descriptive statistics for the numerical data.

> #### Instruction
> To make things easier, rearrange the data so that all of the categorical columns and grouped together on the left, followed by the numerical columns. 

![cardio data](https://i.imgur.com/ONRMfw1.png)

Once we've done that, we'll want to see the **descriptive statistics** for all of the numerical data.

> #### Instruction
> Go to **Data > Data Analysis > Descriptive Statistics** to get the descriptive statistics for all the numerical data in our dataset. Select **New Worksheet** for the output and make sure the **Summary Statistics** box is checked.

Once we've done that, we may want to edit the results by removing any of the repeated labels to make it easier to view the results

![cardio descriptive stats](https://i.imgur.com/uyyF74T.png)

Now, let's ask ourselves a few questions:

1. What can we learn about the data from this statistical summary? 
2. Should we expect to find any outliers based on these statistics? _Focus on measures of central tendency and dispersion_.

## Histogram Time

Let's create a histogram for customer age. We know the age ranges from `18 to 50` so using the statistical histogram chart should probably work okay and it's faster than the Histogram function in the Analysis Toolpak when we just want a quick overview of our data.

> #### Instruction
> Select the data in the age column and create a histogram using using the basic statistical histogram chart available in Excel (not the Toolpak). We want to use a bin width of 2 years.


????
The resulting histogram should look like this:

![cardio age histogram](https://i.imgur.com/3mfsAGT.png)

Based on this histogram, it's difficult to see if there are any true outliers in our `age` data.
????
 
We can create histograms for all of the columns of data if we want. What about income? Miles?
 
## Box Plots

Since we weren't able to easily identify any outliers with our histogram, let's try to use a box plot. 

> #### Instruction
> Create a box and whisker chart using the `age` data. You'll find it under the **Insert Statistic Chart** menue.

What did you find? Were there any outliers?

????
Your box plot should look like this:

![cardio age boxplot](https://i.imgur.com/FjCDKNt.png)

This box plot indicates a couple of data points as outliers, lying more than 1.5xIQR from the box
????
 
This plot shows how the data is distributed for a single variable. We can also use box plots to show more than one variable at a time.

### Age and Gender

> #### Instruction
> Select both the `age` and `gender` columns and create a box and whisker chart in the same way we have done previously.

What do we find? Is there a difference in the age ranges of males and females in this data?

????
Your box plot should look like this:

![cardio age and gender box plot](https://i.imgur.com/fWm8uDm.png)

This box plot gives us some additional information, showing some differences in the age ranges of males and females. In this case, only 1 outlier is identified, whereas there were 2 outliers when the data was plotted without the distinction between genders.
????

 
Let's try a few more.

### Product and Income

> #### Instruction
> Select both the `product` and `income` columns and create a box and whisker chart.

What do we see? Is there a difference between income and the products being purchased? Any outliers?

????
![cardio income by product box plot](https://i.imgur.com/jMpWAhU.png)

This plot shows that customers who purchase the `TM798` have a significantly higher household income than purchasers of the other product.
????
 
We haven't identified many outliers in this data set yet, but we are learning more about the data, which is an important part of the data analysis process.
 
### Product and Weekly Mileage

> #### Instruction
> Select both the `product` and `weekly mileage` columns and create a box and whisker chart.


What are our findings? 

????
![cardio miles by product boxplot](https://i.imgur.com/f9JqUEV.png)

This plot shows that customers who purchase the `TM798` plan to run greater distances than the purchasers of the other two products. We also see several outliers in the data for each product. Interesting!
????
 
## Scatter Plots

Let's do one scatter plot just to practice.
 
### Income vs Miles

We'll plot Income vs Miles mainly because these are the data with the most variability. Scatter plots are less useful when we only have a few numbers (i.e. usage of 1-7 days or fitness level 1-5)

> #### Instruction
> Select the `income` and `miles` column and insert a Scatter Plot (using dots)

What is the result?

????
![scatter plot income vs miles](https://i.imgur.com/2rdcM9i.png)

This plot shows the majority of the data points clustered together between approximately 30-65K income and 50-150 miles a week, with sparser data in the higher income range with mileages generally over 150 miles a week.
????
 
We didn't find too many outliers in this data set, but we learned more about the data by conducting this exploratory analysis and we can be confident that there are not any errors in the data set. We also learned a bit more about our customer and how they use our products! 

