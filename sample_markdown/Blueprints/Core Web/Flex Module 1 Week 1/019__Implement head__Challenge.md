

Let's add one of the simpler array-handling functions to our Lotide project. In doing so we will get more comfortable with adding additional functions to Lotide while also writing test cases for them.

A commonly used function for arrays is to retrieve the first element from the array. This is often referred to as the "head" of the array.

![Illustration: head of an array](https://d.pr/i/jFJudf+)

[//]: # (Editable image located here: https://drive.google.com/file/d/1hkSxltKPBlubIUstxn8VuMlvfCIBmIUj/view)

> #### Information
> Here is Lodash's documentation for its `head` function: <https://lodash.com/docs/4.17.11#head>

<div></div>

> #### Warning
> While this can serve as a reference, we strongly suggest _not_ looking at the implementation for this function within lodash. In some cases, their implement is over-engineered for what we need and may lead to further confusion. It also could remove the challenge. That said, you could take a look at it _after_ successfully implementing your version.

## Setup

> #### Instruction 
> Create `head.js` in your your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch head.js
```

> #### Instruction 
> Copy your `assertEqual` function into this new file.

It would be nice to make use of our handy `assertEqual` function. Copy it from its source file and paste it into the top of `head.js`. In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will do.

## Challenge

> #### Instruction
> Create a function `head` which returns the first item in the array.

The `head` function should _not_ return the first element as an array. It should simply return the element itself.

> #### Instruction 
> Use `assertEqual` to write test cases for various scenarios. 

The tests can be written below the definition of your function. 

Here are some test assertions for you to implement and make pass: 

```javascript
assertEqual(head([5,6,7]), 5);
assertEqual(head(["Hello", "Lighthouse", "Labs"]), "Hello");
```

You should always be thinking about other scenarios to consider. Here are some such examples and how they should be handled:

- An array with only one element should still yield that one element as its head
- An empty array should yield `undefined` as its head

## Complete Assignment

Once you've implemented the function and are satisfied with your various test cases, it's time to push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.
