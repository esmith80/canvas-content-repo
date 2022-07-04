

## The Scenario 

You are an HR Manager at Company XYZ, a company that employs, at any given point of time, around 4000 employees. Every year ~15% of their workforce leave the company and need to be replaced. The powers that be find this level of attrition troublesome and have asked that you help them understand what factors they should focus on, in order to curb attrition. 

### The Dataset

We'll be using the [HR Analytics dataset](https://www.kaggle.com/vjchoudhary7/hr-analytics-case-study) from [Kaggle.com](https://www.kaggle.com/). It contains one worksheet with general data about each employee and another with the results of an employee satisfaction survey. 

> #### Instruction
> Download the [Employee Attrition dataset](https://www.dropbox.com/s/4ugym67it3n7ewt/employee_data.csv?dl=1) and open it in Excel. 

Spend a few minutes exploring the data and seeing what metrics you have to work with (spoiler alert: there are a lot!)

### Attrition by Department 

> #### Instruction
> Use a Pivot Table to determine which department has the highest level of attrition.

The final result should look like this:

????
![attrition by dept](https://i.imgur.com/NEASVnA.png)
????

What can we see from this table? Which department has the highest % of attrition? 

????hr-attrition-1

Yikes! It looks like **Human Resources** has the highest level of attrition at 43%. We calculated this by dividing the # of **Yes** by the Grand Total for each department 

????

#### Attrition by Department and Level

Let's narrow this down even more.

> #### Instruction
> Update the Pivot Table to include **Job Level** as a sub-category.

The final result should look like this:

????
![attrition by level](https://i.imgur.com/xMshqMj.png)
????

What do you notice now? What level has the highest attrition for each department? 

????hr-attrition-2

- Level 3, 4 and 5 Human Resources employees have a 50% attrition rate
- Level 1 Research & Development employees have an 18% attrition rate 
- Level 2 Sales employees have a 20% attrition rate

????

### Employee Satisfaction

Let's switch gears for a second and look at the employee satisfaction, something that can play a key role in attrition.

> #### Instruction
> Open the `employee_satisfaction_survey` worksheet and create a new column called **OverallSatisfaction**. Calculate the overall satisfaction of each employee by adding together the three columns and dividing them by 15.

To make our data easier to work with we want to group our data intro three levels of satisfaction - low, neutral, and high. 

- **Low:** is any score below .43
- **High:** is any score above .60
- **Neutral:** anything else!

> #### Instruction
> Add a new column **SatisfactionLevel** and use a [nested `IF` statement](https://support.office.com/en-us/article/if-function-%E2%80%93-nested-formulas-and-avoiding-pitfalls-0b22ff44-f149-44ba-aeb5-4ef99da241c8) to determine the satisfaction level for each employee. 

Submit the working formula below:

????hr-attrition-3
```
=IF(E2>=60, "High", IF(E2 <= 43, "Low", "Neutral"))
```
????

> #### Instruction
> Use a `VLOOKUP` to access this new **Satisfaction Level** in the `general_data` sheet. You should look up the level using `employee_id`.

<div></div>

> #### Note
> You'll need to reference the survey sheet in your `VLOOKUP`. You can see an example of how to do this [here](https://exceljet.net/formula/vlookup-from-another-sheet)

<div></div>

> #### Instruction
> Create a Pivot Table to examine the attrition numbers across satisfactions levels. Does this show us anything?

### More Questions to Answer

- **What are the attrition rates across gender?**
- **Does frequency of travel impact attrition?**
- **Which role has experienced the highest turnover? At what specific job level?**
- **How does salary impact attrition in each role? Is there a difference in average salary between those who left and those who stayed?**
- **How does salary impact attrition in each job level? Is there a difference in average salary between those who left and those who stayed at each level?**

