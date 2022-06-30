---
uuid: 36793b2e-86f8-452d-b2aa-5574e7e9f5ec
duration: 15
---

## Using the Data Analysis ToolPak to calculate Descriptive Statistics

> #### Instruction
> If you don't already have the Analysis ToolPak installed, see the following link to activate this add-in in Excel: [How to add the Analysis ToolPak](https://support.office.com/en-us/article/Load-the-Analysis-ToolPak-in-Excel-6a63e598-cd6d-42e3-9317-6b40ba1a66b4)
 
Once the Analysis ToolPak is `active` you will see a new  **Data** button on the main ribbon. The Data menu provides a number of tools for managing data. We are going to focus on the **Data Analysis** tools located on the far right hand side of the screen.

## Descriptive Statistics using ToolPack

> #### Instruction 
> Download and open the following dataset: [Session 2 Example 1.xlsx](https://www.dropbox.com/s/npm3auiro6ww2rz/Session%202%20Example%201%20-%20Data.xlsx?dl=1)

This file contains the same data as we used in the last session, with the additional column for Profit.

> #### Instruction
> From the **Data** menu on the top ribbon, select **Data Analysis**, followed by **Descriptive Statistics** from the drop-down list, and press OK 

![descriptive stats menu](https://i.imgur.com/bhL1TpC.png)

> #### Instruction
> **Select Input Options**: Select the data for **Quantity**, **Sales**  and **Profit** (B1:D101). 

<div></div>

> #### Note
> Make sure **Columns** is selected, and tick the box marked **Labels in first row** since our columns include the titles Quantity and Sales 

![descriptive stats input range](https://i.imgur.com/emw8lNf.png)

> #### Instruction
> **Select Output Options**: We have the option to save the output to the same worksheet, create a new worksheet or create a new workbook. Since this is a simple example, we will keep the output on the same sheet as the input. **Select cell H1** to identify the first cell of the output range, tick the box for **Summary statistics** and press OK 

![descriptive stats output range](https://i.imgur.com/u4xifTZ.png)

This gives us the results of the calculations of central tendency and dispersion for Quantity, Sales, and Profit along with some other statistical measures. 

![descriptive stats results](https://i.imgur.com/01WtTXY.png)


**The Descriptive Statistics output includes a few terms not already discussed:**

- `Standard error`: the standard error of the mean is a measure of how accurately the sample mean approximates the population mean.
 - `Kurtosis`: a measure of how much peak the distribution has compared to a normal distribution – positive is more peaked, negative is more flat
 - `Skewness`: positive skew indicates a long tail to the right (more positive values, or right skew), while a negative value indicates left skew
 - `Count`: can be useful when there is a lot of data to identify missing values (i.e. if Quantity and Sales counts are not the same, data is missing)

The **formulas** used to calculate the standard deviation, variance and skew are for **sample data** and not a population. Although the results are similar, it is important to always understand what formula was used to calculate the statistics and that it is appropriate for the situation being analyzed.
 
## Histograms

We found previously that the statistical chart option in Excel doesn't give us as much control over bin intervals as we sometimes would like for histograms.

The Analysis Toolpak includes a more versatile histogram function. To use this function you need to specify your bins prior to creating the histogram.

We are going to re-create the Sales histogram we generated in the last session since we identified that we wanted more control over the bin interval than the Insert Statistic Chart option gave us.
  
> #### Instruction
> Create your bins. Let's choose a bin interval of 1000. Enter the bins anywhere you want within your spreadsheet (we used column F). 

![bins for sales histogram](https://i.imgur.com/tMxKbUO.png)

> #### Instruction
> Go to Data, Data Analysis, Histogram and enter the input range for the sales data (C1:C101) and the bin range.

<div></div>

> #### Note
> If your columns are labelled, make sure the labels in first row box is ticked.

![histogram input](https://i.imgur.com/s0Qo2Ys.png)

> #### Instruction
> Select the first cell of your output range and tick the box for Chart Output.

Your output should look like this: 
![histogram output](https://i.imgur.com/RgPiwLE.png)

> #### Note
> Remember that the bins represent a range. You can edit the data to show the ranges more clearly on the chart, which makes the histogram easier to understand 

![histogram bin range labels](https://i.imgur.com/cQpYxtC.png)
 

> #### Instruction
> Follow the same procedure to create a histogram for the data on Profit. **Remember your descriptive statistics give you the maximum and minimum values**, which can help you determine what your bin range should look like.

Your histogram should look something like this: 

![histogram for profit](https://i.imgur.com/jUEhebB.png)
 
Be careful when you are selecting and labelling ranges. In this example there are negative values, which is why we have profits < 0.
