

There is no coding without `Variables` so we are going to make sure we understand what they are.


## Variables

To understand _variables_, imagine being the captain of a cruise ship. The day consists of...actually, you know what? Let's skip the analogy and just look at some code.

Lines that start with a "#" are **comments** and only exist as plain text to help the person reading the code – they are not code. 

Have a look at the code below. What does each line do? 

Go to your notebook from the previous section and play around with the code below. Write the code out yourself, and try to change different parts of it – what happens?

```python
# name is a variable. It contains a string
name = "Thomas"
print("Hello " + name + ", it's very nice to meet you!")

# taxRate, subtotal, tax and total are all variables that contain numbers
taxRate = 0.14
subtotal = 20
tax = subtotal * taxRate
total = subtotal + tax
print("Your total bill is: ")
print(total)

# travelDestinations is a variable containing a list
# city is a variable - its value is changing a few times
travelDestinations = ["Vancouver","Montreal","Calgary","Toronto"]
for city in travelDestinations:
    print(city + " looks like a cool place to go!!")
```


Make sure you've run the code above before continuing. Don't worry, we'll wait.

There are a bunch of spoilers here for the upcoming sections and if you're lost, don't worry! But the main thing that we're interested in is the words in white. That's how this text editor's syntax highlighting shows that a word is _a variable_.

_Variables_ are names that we give to data. We use _variables_, in a sense, in English, too. Consider the following sentence:

_"I really want that phone, but the price is a dealbreaker."_

In that sentence, **"phone"** is _a variable_. The data it refers to is a particular model of phone. **"Price"** is also _a variable_. The data it refers to is a dollar amount. To understand what that sentence means, we could unpack it to say:

_"I really want that Nokia 3310, but $28.00 is a dealbreaker."_


### Why use variables?

One reason that _variables_ are so handy is because giving names to things is a powerful way to organize your ideas. In the second example, we could have just as easily written this totally valid Python code:

```python
print("Your total bill is:")

print(20 + 20 * 0.14)
```

But this version of the calculation is far less clear. What does each number represent? If you were explaining this calculation to another person, we'd use _variables_ in our explanation: 

> "To calculate tax, you multiply the subtotal by the tax rate. That's the amount of tax you owe. Then, you add the tax to the subtotal, and that's what you pay in total."  

We can apply that logic to any subtotal, and any tax rate. If we used the actual numbers, that procedure wouldn't make sense.

### Unknown Inputs

Another major reason that we use _variables_ is because we don't always, or even usually, know in advance what data our program is going to be working with.

Going back to our first example, maybe instead of deciding in advance that we're only interested in greeting people named Thomas, we want to ask for the user's name. Python makes that easy with the `input()` function.


```python
# name is a variable. It contains a string
name = input()
print("Hello " + name + ", it's very nice to meet you!")
```

> #### Instruction
> Try it yourself. Change line 2 to get the name from whatever the user types in, then run the program and try typing in different names.


What did you notice? The execution stops, as expected, but it's a little unclear that the script is waiting for us to do something. It would be nice if we could give the user a message, telling them what we'd like them to do.

`input()` is a **function**. If we pass a **parameter** to it, that parameter will become the prompt, that is, the message that is printed when Python stops to wait for input. It looks like this:

```python
# name is a variable. It contains a string
name = input("Please, type in your name: ")
print("Hello " + name + ", it's very nice to meet you!")
```


Now when we run this code, it's much clearer that Python is waiting for us to do something.

There are many different ways that our Python programs can receive data from the outside world. It could be from a database, a spreadsheet, a sensor, or another software program. It could be user input: a button press, a mouse gesture, or a voice command. But we handle all of these inputs in the same way, capture them in _a variable_ and give them a name.
