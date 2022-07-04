

## Calculating basic statistics in Excel

We are part of the product team working on a video content application called NewTube. We've just pulled a data report on the weekly viewing time and level of satisfaction of our users and want to do some exploratory data analysis on it! 

## Excel Functions for Central Tendency

> #### Instruction
> Download and open the following file in Excel: [SessionOne_Data1.xlsx](https://docs.google.com/spreadsheets/d/1sxA7v0eXj4LIDvETwMM5B6Fe2gA7kaPO/edit?usp=sharing&ouid=116968564508673668909&rtpof=true&sd=true)

<div></div>

> #### Instruction 
>  Calculate the mean, median and mode for both **level of satisfaction** and **weekly viewing time** using the appropriate Excel functions

????
We will want to use the functions **AVERAGE, MEDIAN** and **MODE** in Excel for each of these.  The results should be as follows: ![Example 1 central tendency](https://i.imgur.com/OMuY4gW.png)

Remember, the mode is the **most frequently occurring number**. With continuous data, there are an infinite number of decimal places between each full number - therefore there is **no** mode for weekly viewing time.
????

## Create a Histogram 

Now that we have our measures of central tendency, let's visualize them to help interpret what they mean. 

> #### Instruction
> Select cells **D1:D101** to create a histogram of **viewing time**. 

 From the **Insert** menu, select **Insert Statistic Chart**, and **Histogram**. 
 
 > #### Note
 > The number of bins used on the x-axis is determined automatically by Excel. 

????
The resulting histogram looks like this: ![Example 1 default histogram](https://i.imgur.com/TSfDRQx.png)
????


This doesn't look _quite_ right. We'll want to change the number of bins so that they more accurately reflect our data. 

> #### Instruction
> Right click on the x-axis of the chart and select **Format Axis**. Under **Axis Options**, try different **bin widths** (i.e. 100, 200) to see how this affects the presentation of the data. 

Alternatively, you can specify the number of bins and the interval will be calculated automatically. In this case,we might want to choose 120 minutes since this corresponds to 2 hours and makes it easier to interpret the graph. 

The histogram with a bin width of 120 minutes looks like this: 

![Example 1 viewing time histogram](https://i.imgur.com/Ots109e.png)

### A Histogram vs. A Bar Chart

There are a few differences between histograms and bar charts (despite their similar appearance). Histograms are used to show distributions of variables while bar charts are used to compare variables. Histograms plot binned quantitative data while bar charts plot categorical data. Bars can be reordered in bar charts but not in histograms.

> #### Note
> For more examples of the differences between a bar chart and a histogram read [A Histogram is Not A Bar Chart](https://www.forbes.com/sites/naomirobbins/2012/01/04/a-histogram-is-not-a-bar-chart/#31fb11706d77).

## Viewing Satisfaction 

> #### Instruction 
> Repeat the same procedure above to create a histogram for **levels of satisfaction**. 

In this case we should select **5 bins** as we have 5 levels of satisfaction. Creating a histogram using this ordinal data only makes sense if the interval between each level of satisfaction is equal. 

????
The resulting histogram looks like this: ![Example 1 satisfaction histogram](https://i.imgur.com/iWqdEF2.png)

> #### Note
> You will notice that when we use 5 bins the labels do not match the satisfaction levels 1 through 5, although in this case each interval encompasses one level of satisfaction. This occurs because the bin in a histogram represents an interval and not a discrete number. If we want to create a histogram for the ordinal data **Level of Satisfaction** with the labels 1 through 5, we have two options: create a histogram using the Analysis ToolPak, or use the FREQUENCY function. These will be discussed later in the course. 
????


## Interpretation

What can we learn from looking at these numbers? We can see that on average our users are spending just over 700 minutes or 5.8 hours per week viewing our content, and are reporting a moderate level of satisfaction. Anything else?

How could we use this information? Perhaps we could start by building a dashboard that tracks viewing time and satisfaction to compare on an ongoing basis as we test out new content. 
