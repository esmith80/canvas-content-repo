---
uuid: 6228f5ea-654b-4d42-b7aa-e5d668aee061
duration: 10
---

We've spent some time cleaning and preprocessing text data to make them suitable for NLP modeling algorithms.

Now we will take a look at two NLP topics with a focus on modeling: `Sentiment analysis` and `Topic modeling`.


## What is `Sentiment analysis`?
**Sentiment analysis** is contextual mining of text, which identifies and extracts subjective information in the source material and helps businesses to understand the social sentiment of their brand, product, or service while monitoring online conversations. It is used to discover people’s opinions, emotions, and feelings about a product or service. 

*Sentiment analysis* has also many other names — Opinion Mining, Sentiment Mining, or Subjectivity Analysis.

Even though both, supervised and unsupervised learning, can be used for sentiment analysis, we will focus on `supervised learning` sentiment analysis.


## What is `Topic modeling?`
Topic Models, in a nutshell, are a type of statistical language models used for uncovering hidden structure in a collection of texts. You can think of it as a task of:

* `Dimensionality Reduction` - where, rather than representing a text T in its feature space as {Word_i: count(Word_i, T) for Word_i in Vocabulary}, you can represent it in a topic space as {Topic_i: Weight(Topic_i, T) for Topic_i in Topics}

* `Unsupervised Learning` - where it can be compared to clustering. As in clustering, the number of topics, like the number of clusters, is an output parameter. By doing *topic modeling*, we build clusters of words rather than clusters of texts. A text is thus a mixture of all the topics, each having a specific weight.

* `Tagging` - tagging abstract “topics” that occur in a collection of documents that best represents the information in them.

There are several existing algorithms you can use to perform *topic modeling*. The most common are:

* `Latent Semantic Analysis (LSA/LSI)`

* `Probabilistic Latent Semantic Analysis (pLSA)`  

* `NMF (Non-negative-matrix-factorization)` 

* `Latent Dirichlet Allocation (LDA)`

For now, we will focus mainly on the `LDA` algorithm which is the most popular one.





