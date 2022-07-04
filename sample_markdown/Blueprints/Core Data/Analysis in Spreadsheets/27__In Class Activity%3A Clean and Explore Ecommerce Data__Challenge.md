

## The Scenario

For this challenge, we'll be working with an [E-commerce Dataset](https://www.kaggle.com/carrie1/ecommerce-data) from [Kaggle](https://www.kaggle.com/). It contains all the transactions completed on a UK E-commerce site. The company mainly sells unique all-occasion gifts and many of their customers are wholesalers.

To summarize:

- **Company** = a UK-based online retail site
- **Products for selling** = all-occasion gifts
- **Customers** = mostly wholesalers (local or international)
- **Transactions Period** = one year, from December 1st 2010 to December 1st 2011

> #### Instruction
> Download the data set by clicking this link: [http://bit.ly/lhl-ecom-sales](http://bit.ly/lhl-ecom-sales) and open the CSV in Excel.

## Cleaning up the Data

> #### Instruction 
> Start by identifying what types of data are contained in the dataset and what each variable means. How many columns are in the dataset and what do they each mean?

????clean-data-variables
- `invoice_num`: A number assigned to each transaction, unique id
- `stock_code`: Product code, unique id
- `description`: Product name, string
- `quantity`: Number of products purchased for each transaction, integer 
- `invoice_date`: Timestamp for each transaction, date
- `unit_price`: Product price per unit, integer
- `cust_id`: Unique identifier each customer, unique id
- `country`: Country name, string
????

### Removing Missing or Duplicate Data

We notice that there are some blank cells in both `cust_id` and `description`. We'll need to remove those entries before proceeding with our analysis.

> #### Instruction
> Remove any rows that have blanks in the `cust_id` and `description`. 

We can click **Find & Select** > **Go To Special...** to select all of the blank cells in a range. Once we've select all of the blank cells we'll want to delete the **sheet rows** not just the cells themselves. Take some time to figure out how to complete this step before toggling below 

????
![click delete](https://i.imgur.com/v6dNWXK.png)

![delete sheet rows](https://i.imgur.com/pyUapdL.png)
????

> #### Instruction
> Check for and remove ay duplicate values in the `invoice_num` category. Each invoice should have a unique id and therefore should not be duplicated in the dataset.

????
![duplicates](https://i.imgur.com/BDKJpkr.png)
????

> #### Note
> We aren't sure what type of analysis we're going to do yet or what questions we might ask our data, so we don't have any **irrelevant** data to remove just yet. 


### Removing Incorrect Data

Now that we have some better context for the data and we've removed some missing values, let's calculate the **measures of central tendency** and **measures of dispersion** for our dataset.

> #### Instruction
> Use the appropriate Excel formulas to calculate the `mean`, `median`, `mode`, `standard deviation` and `range` of any of the numerical data in our data set. 

What do you notice?

????
There are negatives for both `unit_price` and `quantity`. These will need to be removed! 
????

### Restructuring Our Data

Sometimes we might want to add or remove particular columns to assist in analysis later. In this case, we might want to add a column that shows the dollar amount spent  per order.

This can be easily calculated by multiplying `unit_price` * `quantity`.

> #### Instruction
> Add a column for `amount_spent` and calculate the amount spent on each order using the above formula

We also might want to look closer at when sales took place. This will require us to do a bit of data transformation, splitting out the day, month, year and time.

> #### Instruction
> Add a new column called `month` and get the name of the month for each invoice. There is a formula we can use to help do this.

Do some Googling to try figuring out to do this before toggling the answer below.

????
We can use the following formula to turn the date into a the month as a string value `=ARRAYFORMULA(MONTH(E2:E))`
????

> #### Instruction
> Try and do the same for `day`, `year` and `time`.


Once we've completed this step, we'll have the final dataset to use for our Exploratory Data Analysis (EDA) in the next activity.
