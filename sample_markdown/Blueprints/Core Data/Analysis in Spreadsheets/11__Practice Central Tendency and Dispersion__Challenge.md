---
uuid: e37d0f68-d33b-4551-8767-b014817169ce
duration: 15
name: "Practice: Central Tendency and Dispersion"
---

## The Scenario

Our eCommerce store is starting to take off! Since we've launched the whole team has been heads down trying to make sales and we haven't had time to analyze any of the numbers. The Head of Sales wants us to start optimizing our sales strategy and to begin with that means doing some basic exploratory data analysis on our sales to date.  

## Calculate central tendency and dispersion

> #### Instruction
> Download and open the following file in Excel: [SessionOne_Data2.xlsx](https://www.dropbox.com/s/izpn4gm8qjoqc9d/SessionOne%20-%20Data2.xlsx?dl=1)

<div></div>

> #### Instruction
> Calculate the basic statistics describing central tendency and dispersion for **Quantity** and **Sales** in this sample using the appropriate Excel functions. Enter the results below.

????stats-central-disp
The results should be as follows: ![Example 2 basis statistics](https://i.imgur.com/PJxFcD8.png)

Do you remember the reason there is no value for the MODE for Sales?
????

 
## Create Histograms

> #### Instruction
> Create a histogram of the order quantities. Make sure you are selecting an appropriate bin width.


Remember Quantity is a discrete number, so it does not make much sense to use a fractional bin width. Click below if you need help remembering how to adjust the bin width, you can revisit the [previous activity](/45169de0-9d0d-48eb-885f-bcd31375a3fa)

????
Your histogram should look like this: ![Example 2 histogram for quantity](https://i.imgur.com/LbgDC2z.png)
????

> #### Instruction
> Create a histogram for the sales data. Select either the **Bin width** or **Number of bins** that is most appropriate for displaying this data.


You will notice that the data is always displayed starting from $8 and we end up with a chart that looks like this: ![Example 2 sales histogram](https://i.imgur.com/h7lLbaZ.png%22%7D%5D)

It would look much better if we were to start from $0 with even-numbered intervals. To do this in Excel, we need to create a histogram using the Analysis ToolPak, which we will learn about our next session. Even if the bin interval we are able to specify here is not ideal, creating the histogram increases our understanding of the distribution of the data.

## Interpretation 

What do you notice about the resulting histograms? How would you interpret these results? What would you do with the information you've gained from this basic exploratory analysis? 

????stats2-interpretation
Our sales data has a slight positive skew! That's right, we will often find skewness in data sets that represent sizes using positive numbers - like sales. The reason being that sales values cannot be less than $0 but are not restricted by a definite upper boundary. The result is that there are many data values concentrated near zero, and they become systematically fewer and fewer as you move to the right in the histogram. 

This information could be used as the basis for a sales dashboard to keep track of the quantity of sales per month and their average amount to identify any fluctuations. 
????

