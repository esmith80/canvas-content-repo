

Before we go any deeper into the theory behind Time Series Analysis, let's see how we can work with Time Series Pandas.

## Time Series in Pandas

We already know what time series data look like. Now, we are going to see how we can import them and work with them in Python. We will, once more, use the Pandas library, which offers great methods for working with time series.

> #### Instruction
> Follow the [**Working with Time Series**](https://jakevdp.github.io/PythonDataScienceHandbook/03.11-working-with-time-series.html) tutorial and play around with simple time series data in 
Python.

<!-- -->

> #### Note
> Google resource for datasets that is mentioned in the tutorial is no longer available but we can replace it with Yahoo:
>
> ```python
> from pandas_datareader import data
> goog = data.DataReader('GOOG', start='2004', end='2016', data_source='yahoo')
> goog.head()
> ```


<!-- -->

> #### Note
> There are a couple of concepts in the article we haven't covered yet but we will come back to them later.
