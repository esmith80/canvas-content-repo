


In this tutorial, we will see how we can use pre-trained Word2Vec models from the internet.

## Pre-trained Word2Vec Model from Google

One of the most famous pre-trained Word2Vec models that can be found online is the one from Google. We will see how we can download and use it to find interesting relationships betweeen various words.


> #### Instruction
> We can find more information about the model in the article [**Google's trained Word2Vec model in Python**](https://mccormickml.com/2016/04/12/googles-pretrained-word2vec-model-in-python/).

Once we have the model loaded in Python, we can play with its different pre-built functions. Firstly, we can find the numeric vector for every word (it will always have length of 300).

```python
vector = model['easy']
# see the shape of the vector (300,)
vector.shape
```

### Similarities

We can find the most similar words to any word:

```python
model.most_similar("nice")
```

Or a similarity score of any two words:

```python
model.similarity("nice","good")
```

Interestingly, if we take two antonyms (words with opposite meaning), they are going to be highly similar according to a good Word2Vec model. This because we can usually replace opposite words with each other in the text.

```python
# Interesting
model.similarity("bad","good")
```

We can also look for interesting relationships between words.

```python
# king - queen = man - woman
model.most_similar(positive=['woman', 'king'], negative=['man'])
```

Let's try it on our own.

> #### Instruction
> Using the logic from the previous example, `king - queen = man - woman` and the `most_similar` function from word2vec model, replace the `?` in the following lines:
>
> - mom --> girl, dad --> ?
> - france --> paris, spain --> ? 
> - mother --> ?, table --> chair
>


## Conclusion

This library looks quite powerful, right? In the next tutorial, we will build own Word2vec model so we don't have to rely on this one from Google every time :).