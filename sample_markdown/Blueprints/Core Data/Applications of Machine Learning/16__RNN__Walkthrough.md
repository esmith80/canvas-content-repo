---
uuid: 468c3c92-5177-49ec-a77c-bc0432c411a0
duration: 90
---

And here comes the promised RNNs tutorial. We will combine things we learned previously about Recurrent Neural Networks and NLP, and build our first RNN with Keras.

## Tutorial


You can find the data for this tutorial [**here**](https://drive.google.com/file/d/1k85NvbGcZ5b_Uj9mXxzhivVAbuXHHzBT/view?usp=sharing). 

We'll be working with the tutorial from the article [**Training a Keras model to generate colors**](https://heartbeat.fritz.ai/how-to-train-a-keras-model-to-generate-colors-3bc79e54971b). It's missing a couple of lines of code and uses an older version of `tensorflow` so we've copied it here with some adjustments.


We will recap some of the basic concepts of text data processing and doing predictions with RNNs.

### Overview

1. Choose a `language model` that will best represent the input text.
2. Clean and prepare the data for training.
3. Build a basic Keras sequential neural network model.
4. Apply `recurrent neural network (RNN)` to process character sequences.
5. Generate 3 channel RGB color outputs.

Let’s take a look at what we're going to build:

![](https://i.imgur.com/uDuzCNe.png)

### Language Model

There are two general options for language modeling: word-level models and character-level models. Each has its advantages and disadvantages. Let’s go through them now.


### Word-level Language Model

The word-level language model can handle relatively long and clean sentences. By “clean”, I mean the words in the text datasets are free from typos and have few words outside of English vocabulary. The word-level language model encodes each unique word into a corresponding integer, and there’s a predefined fixed-sized vocabulary dictionary to look up the word to integer mapping.
One major benefit of the word-level language model is its ability to leverage pre-trained word embeddings such as Word2Vec or GloVe. These embeddings represent words as vectors with useful properties. Words close in context are close in Euclidean distance and can be used to understand analogies like "man is to women, as king is to queen". Using these ideas, you can train a word-level model with relatively small labeled training sets.

### Character Level Language Model

But there’s an even simpler language model, one that splits a text string into characters and associates a unique integer to every single character. There are some reasons you might choose to use the character-level language model over the more popular word-level model:

- Your text datasets contain a noticeable amount of out-of-vocabulary words or infrequent words. In our case, some legitimate color names could be “aquatone”, “chartreuse” and “fuchsia”. For me, I have to check a dictionary to find out their meanings, and traditional word-level embeddings may not contain them.
- The majority of the text strings are short, bounded-length strings. If you’re looking for a specific length limit, I’ve been dealing with a Yelp review generation model with character level encode character length of 60 and still get decent results. You can find that blog post here: How to generate realistic yelp restaurant reviews with Keras. Usually, the character-level language generation model can create text with more variety since its imagination is not constrained by a pre-defined dictionary of vocabulary.

You may also be aware of the limitation that came with adopting character-level language:
- Long sequences may not capture long-range dependencies as well as word-level language models.
- Character-level models are also more computationally expensive to train — given the same text data sets, these model sequences are longer and, as a result, require extended training time.


Fortunately, these limitations won’t pose a threat to our color generation task. We’re limiting our color names to 25 characters in length and we only have 18,606 training samples.

> #### Note
> This number differs from the one in the article because we are using a different dataset.


We will start with the import of the required packages:

```python
import tensorflow as tf
from tensorflow.python import keras
from tensorflow.python.keras import preprocessing
from tensorflow.python.keras.preprocessing.text import Tokenizer
from tensorflow.python.keras.models import Sequential
from tensorflow.python.keras.layers import Dense, Dropout, LSTM, Reshape

import numpy as np
import pandas as pd
```

Now, we can load the data into a Pandas data-frame and create separate series with color names.


```python
data = pd.read_csv("colors.csv")
names = data["name"]
data.head()
```


### Data Preparation


We mentioned that we’re limiting our color names to 25 characters. To arrive at this number, we checked the distribution of the length of color names across all training samples and visualize it to make sure the length limit we pick makes sense.

```python
h = sorted(names.str.len().values)
import numpy as np
import scipy.stats as stats
import pylab as plt

fit = stats.norm.pdf(h, np.mean(h), np.std(h))  #this is a fitting indeed
plt.plot(h,fit,'-o')
plt.hist(h,normed=True)      #use this to draw histogram of your data
plt.xlabel('Chars')
plt.ylabel('Probability density')
plt.show()
```

That gives us this plot, and you can clearly see that the majority of the color name strings have lengths less or equal to 25, even though the max length goes up to 30.

We could, in our case, pick the max length of 30, but the model we’re going to build would also need to be trained on longer sequences for an extended time. Our trade-off to pick shorter sequence length reduces the model training complexity while not compromising the integrity of the training data.


With the decision of max length being made, the next step in the character-level data pre-processing is to transform each color name string to a list of 25 integer values, and this is made easy with the Keras text tokenization utility.

```python
maxlen = 25
t = Tokenizer(char_level=True)
t.fit_on_texts(names)
tokenized = t.texts_to_sequences(names)
padded_names = preprocessing.sequence.pad_sequences(tokenized, maxlen=maxlen)
print(padded_names.shape)
```

Right now, padded_names will have the shape of (18606, 25), with 18,606 is the number of total training samples and 25 being the max sequence length. If a string has less than 25 characters, it will be padded with the value 0 from the beginning of the sequence.

You might be thinking, all inputs are now in the form of integers, and our model should be able to process it. But there is one more step we can take to make later model training more effective.

### One-hot Encoding

We can view the character to integer mapping by inspecting the `t.word_index` property of the instance of Keras’ Tokenizer.

```python
print(t.word_index)
```

We can see that all of the most frequent characters (letters) are in the top 25. Therefore, this number should be sufficient.

However, the integer values have no natural ordered relationship between each other and our model may not be able to harness any benefit from it. What’s worse, our model will initially assume such an ordering relationship among those characters (i.e. “a” is 2 and “e” is 1 but that should not signify a relationship), which can lead to an unwanted result. We will use **one-hot encoding** to represent the input sequence.

Each integer will be represented by a boolean array where only one element in the array will have a value of 1. The max integer value will determine the length of the boolean array in the character dictionary.

In our case, the max integer value is `'ù': 89`, so the length of a one-hot boolean array will be 28 (considering the lowest value starts with 0, which is the padding).

For example, instead of using the integer value 2 to represent character ‘a’, we’re going to use one-hot array [0, 0, 1, 0 …….. 0].

One-hot encoding is also accessible in Keras.

```python
from tensorflow.python.keras.utils import np_utils
one_hot_names = np_utils.to_categorical(padded_names)
```



The resulting one_hot_names has the shape (18606, 25, 90), which stands for (# of training samples, max sequence length, # of unique tokens).


### Data Normalization


Remember we’re predicting 3 color channel values, each value ranging between 0–255. There is no golden rule for data normalization. Data normalization is purely practical because in practice it could take a model forever to converge if the training data values are spread out too much. A common normalization technique is to scale values to [-1, 1]. In our model, we’re using a ReLu activation function in the last layer. Since ReLu outputs non-negative numbers, we’ll normalize the values to [0, 1].

```python
# The RGB values are between 0 - 255
# scale them to be between 0 - 1
def norm(value):
    return value / 255.0

normalized_values = np.column_stack([norm(data["red"]), norm(data["green"]), norm(data["blue"])])
```

### Building the Model

To build our model we’re going to use two types of neural networks: a feed-forward neural network and a recurrent neural network. The feed-forward neural network is by far the most common type of neural network. In this neural network, the information comes into the input units and flows in one direction through hidden layers until each reaches the output units.

In recurrent neural networks, information can flow around in cycles. These networks can remember information for a long time. Recurrent networks are a very natural way to model sequential data. In our specific model, we’re using one of the most powerful recurrent networks named long short term memory (LSTM).

The easiest way to build a deep learning model in Keras is to use its sequential API, and we simply connect each of the neural network layers by calling its model.add() function like connecting LEGO bricks.

```python
model = Sequential()
model.add(LSTM(256, return_sequences=True, input_shape=(maxlen, 90)))
model.add(LSTM(128))
model.add(Dense(128, activation='relu'))
model.add(Dense(3, activation='sigmoid'))
model.compile(optimizer='adam', loss='mse', metrics=['acc'])
```

Training a model by calling `model.fit()` function cannot be any easier.

```python
history = model.fit(one_hot_names, normalized_values,
                    epochs=40,
                    batch_size=32,
                    validation_split=0.2)
```

### Generate Colors

Let’s define some functions to generate and show the color predicted.

For a color name input, we need to transform it into the same one-hot representation. To achieve this, we tokenize characters to integers with the same tokenizer with which we processed the training data, pad it to the max sequence length of 25, then apply the one-hot encoding to the integer sequence.

And for the output RGB values, we need to scale it back to 0–255, so we can display them correctly.

```python
# plot a color image
def plot_rgb(rgb):
    data = [[rgb]]
    plt.figure(figsize=(2,2))
    plt.imshow(data, interpolation='nearest')
    plt.show()

def scale(n):
    return int(n * 255) 

def predict(name):
    name = name.lower()
    tokenized = t.texts_to_sequences([name])
    padded = preprocessing.sequence.pad_sequences(tokenized, maxlen=maxlen)
    one_hot = np_utils.to_categorical(padded, num_classes=90)
    pred = model.predict(np.array(one_hot))[0]
    r, g, b = scale(pred[0]), scale(pred[1]), scale(pred[2])
    print(name + ',', 'R,G,B:', r,g,b)
    plot_rgb(pred)
```

Let’s give the `predict()` function a try.

```python
predict("forest")
predict("ocean")
```

These are what the model proposed:

![](https://i.imgur.com/iIkOmxY.png)
<!-- -->


![](https://i.imgur.com/TuFHY1e.png)


We can see that the colors are quite right. 

> #### Instruction
> Try to find some colors that will be wrong. What can we do to try to improve the model?



## Conclusion

In this post, we talked about how to build a Keras model that can take any color name and come up with an RGB color value. More specifically, we looked at how to apply the one-hot encoding to character-level language models, building a neural network model with a feed-forward neural network and recurrent neural network.

Here’s a diagram to summarize what we have built in the post, starting from the bottom and showing every step of the data flow.

![](https://i.imgur.com/Us8f5K3.png)


