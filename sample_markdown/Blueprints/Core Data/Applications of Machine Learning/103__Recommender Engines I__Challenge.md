---
uuid: 61783d22-0307-4bf1-9f29-61954d945508
duration: 180
---

Let's put all the information together and **build a complex recommender engine**. We're going to create a content based algorithm using Word2Vec and NLP.

## Challenge

We are going to create a recommender engine using Word2Vec. The items bought together by one customer will be considered as one sentence. If we can represent each item by a vector then we can easily find a similar product.

![](https://i.imgur.com/KNoiM9G.png)

> #### Instruction
> The dataset we're going to work with is from online retail and can be downloaded from [**this link**](https://archive.ics.uci.edu/ml/machine-learning-databases/00352/).

<!-- -->

> #### Instruction
> Split the data to a train and a test set (take 10% of customers as test) and recommend 5 products to all of them based on their first purchase.

The goal is to build our own Word2Vec model using the vocabulary from column **StockCode**. We consider different StockCodes which were bought by the same customer as one "sentence". Example of a sentence: `["85123A","71053","84406B","84029G"]`.




## Teacher Notes

Results are here: https://www.analyticsvidhya.com/blog/2019/07/how-to-build-recommendation-system-word2vec-python/
