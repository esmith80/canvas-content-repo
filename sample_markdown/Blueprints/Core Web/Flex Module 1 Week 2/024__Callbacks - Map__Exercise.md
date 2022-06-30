---
uuid: aaf69c2c-57ac-4b92-b559-f14b84caaff3
section: 9ce11024-9346-45bb-8dbc-c1e6f562ef4f
duration: 45
name: "Implement Map"
tags: focal
---

Now let's create our own version of `map` in order to get some practice building our own higher-order functions. 

## Setup

> #### Instruction
> Create a file in your `lotide` directory called `map.js`

```terminal
cd /vagrant/lotide
```

```terminal
touch map.js
```

> #### Instruction
> Make sure that the entire `lotide` directory is open in your VCode/editor.

<div></div>

> #### Instruction
> Use the "Go to File" command and use the file name to quickly navigate to the file in VSCode.

As a reminder, on Mac OS the shortcut for this is <kbd>Command (⌘)</kbd> + <kbd>P</kbd>

## Function Definition

Our `map` function will take in two arguments:

1. An array to map
2. A callback function

The `map` function will return a new array based on the results of the callback function.

## Initial Code

> #### Instruction
> Add a collection of words to your empty `map.js` file:

Feel free to use these or create a different collection of words:

```javascript
const words = ["ground", "control", "to", "major", "tom"];
```

Now let's cause our first error by calling our nonexistent `map` function.

> #### Instruction
> Call `map` and pass in our words and a simple arrow function.

We can do a simple test by adding the following code _below_ the map function definition:

```javascript
const results1 = map(words, word => word[0]);
console.log(results1);
```

> #### Question
> What output do we expect to see when we run our `map.js` file?

????expected-output1
Something about the map function not being defined. More specifically: `ReferenceError: map is not defined`
????

Let's define `map` in a minimal way in order to fix the error.

> #### Instruction
> Define an empty `map` function

```javascript
const map = function() {
  // empty for now :)
}
```

> #### Question
> What output do we expect to see now when we run our `map.js` file?

????expected-output2
Since the function returns nothing, the value of `results1` will be `undefined`.
????

## Implementing The Function

Let's add some logic to our empty function!

> #### Instruction
> Start off with an empty array and return that array

```javascript
const map = function() {
  const results = [];
  return results;
}
```

As always, run your code changes and ensure that your expectation/hypothesis is satisfied.

> #### Instruction
> Run the code.

We should expect to see an empty array output to the console.

> #### Instruction
> Change the function to take in two arguments.

Let's also console.log the arguments while we're at it, just to ensure that they are working as expected.

```javascript
const map = function(array, callback) {
  // temporary code:
  console.log('array: ', array);
  console.log('callback: ', callback);

  const results = [];
  return results;
}
```

> #### Question
> What should we expect to see when we run the code next?

????expected-output3
We expect to see the words array and callback function information output _before_ the empty (results) array is output.
????

> #### Instruction
> Add the loop logic which just `console.log`s each `item` in the provided array as well as what happens to the `item` after being passed into the `callback`.

We can remove the previous temporary code as well.

```javascript
const map = function(array, callback) {
  const results = [];
  for (let item of array) {
    console.log('item BEFORE: ', item);
    console.log('item AFTER: ', callback(item));
    console.log('---');
  }
  return results;
}
```

Note that the code above is only showing the map function, but our full `map.js` file will contain other code outside the function that is not shown above.

The important bit above is that our `map` (higher-order) function can _call_ the callback function. This callback function is the one that is passed in as its second argument and conveniently called `callback`.

Since `map` is passing in the original item to it, our test code which calls `map` knows to pass in a callback function which accepts that one and only argument.

> #### Question
> What do we expect to see when this code is run? Try to answer this before running it.

????expected-output4
It will run successfully and print out each word on its own line along with another line for the return value of the callback. This is due to two console.log statements inside the for loop. Since the results array is still empty, it will finally print out an empty array.

The output should therefore look like this:

```terminal
item BEFORE: ground
item AFTER: g
--
item BEFORE: control
item AFTER: c
--
item BEFORE: to
item AFTER: t
--
item BEFORE: major
item AFTER: m
--
item BEFORE: tom
item AFTER: t
--
[ ]
```
????

We now need to populate our `results` array and remove these debug-friendly (`console.log`) statements.

> #### Instruction
> Complete the `for` loop by pushing each `item` into our results array.

```javascript
const map = function(array, callback) {
  const results = [];
  for (let item of array) {
    results.push(callback(item));
  }
  return results;
}
```

And that should complete the logic for our `map` function! Not bad, eh?

## Testing Our Code

First we should setup our file for easy testing... 

> #### Instruction
> Copy in our `assertArraysEqual` function in order to test our `map` function.

Keep in mind that it depends on `eqArrays` which will also have to be copied in.

> #### Instruction
> Write test cases using at least three different ways of using map. 

- Think about the different scenarios that make sense to test.
- Be sure to use `assertArraysEqual` to compare the results from `map` with expected array results.

## Complete Assignment

With the function implemented and satisfactory tests in place, we can push our work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your lotide git repository.
