---
uuid: 745da398-f12d-475e-8e83-2ddab53e4c7d
duration: 10
---



## An Introduction to Data and Logic

In programming, **data** is any information that is represented digitally in a way that a computer can interact with it. 

**Logic** is the plan that the computer has for interacting with data. Learning to program is simply learning to create interactions between data and logic. We might call that interaction **behaviour**.


If the data is a text message, the behaviour we create could be to spot typos and correct them automatically. If the data is the reading of a clock, the behaviour might be to notice what time it is, and remind you about appointments that you've set up (which are also data). It could be to capture the details of your pizza order and arrange for it to reach someone in a kitchen who is proficient with cheeses and dough. Computers don't know about pizza. To a computer, data and logic are all that exists.



### Representing Data

Let's work with the pizza example. Here's how we might express a pizza order in plain English:

"I'd like a large pizza with feta cheese, prosciutto, olives, and arugula, on a gluten-free crust. Please deliver it to 401 Somewhere St. Specifically, to the treehouse in the back yard."

Imagine it's the year 1998, and it's you on the other end of that landline call. With the receiver of the restaurant's rotary telephone pinched between your ear and shoulder, you jot down the details of this order to hand off to the kitchen. You might write something like this:


![](https://i.imgur.com/zvDpcxB.png)



Though you might not think of it this way, you've captured the data of the order and encoded it in written text. It's broken up into just the facts that the system (in this case, the kitchen and delivery personnel) can make use of. All of the relevant data is captured succinctly, with no unnecessary fluff. The representation of a pizza order in plain English is actually quite similar to how it might be represented in plain Python:

```python
pizza = {
    'size': 'large',
    'toppings': [
        'feta',
        'prosciutto',
        'olives',
        'arugula'
    ],
    'crust': 'gluten free',
    'address': '401 Somewhere St.',
    'note': 'Deliver to treehouse in back yard.'
}
```

There is actually a great deal going on here (including spoilers for later), but for now, just notice how our data can be structured in a very reasonable and readable way. This example isn't simplified, either – the above would not be surprising to see, exactly as-is, in an app taking orders for a real pizza parlour right now. 

So we have a taste now for what data is, and what it looks like in Pythonland. During the rest of this module we will talk about different types of data. The word `"type"` means something quite specific in programming, so let's have a quick look at that.



### Types


Programming languages make the distinction between different data types. A data type is important because it lets us know what we can do with it. The sorts of things that we might want to do with a number are different than the sorts of things that we might want to do with a string of text.

For example, with a number, we might want to perform **multiplication**. With a bit of text, we might want to convert it to **ALL UPPERCASE**. However, it's not clear what it would mean to divide the phrase `"Treehouse in the back yard"` by `3`, and similarly, the prospect of converting the number 128 to uppercase is... confusing. Those are different types of things.

For that reason, Python, like most programming languages, keeps data types neatly separated. We are going to talk about all data types, and the sorts of things that we can do with them. In programming languages there are many more data types than `numbers` and `strings`. Strings could be considered as the most important data type (though this is not objectively true but it can be an expedient way to start arguments with computer scientists!), so we'll start with strings first.


