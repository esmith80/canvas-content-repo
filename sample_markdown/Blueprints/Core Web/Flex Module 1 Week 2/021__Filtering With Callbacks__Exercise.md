---
uuid: 12141571-640f-438e-9e9b-6a8a89124580
duration: 45
allow_submissions: true
tags: focal
outcomes:
  - 4bbba5ea-f3f2-44d4-98f2-0b4fdd27a054
  - 44297d4e-44a3-4df4-a8ad-2ea7169892ec
  - a5ab5f31-17d9-4520-9f25-89489902e704
  # filter
  - f3a5131b-ac89-47c3-8873-d43480288400
  # map
  - db1fb07a-b361-4d59-a072-7e83e1b94e63
---

This activity illustrates a few more ways that callbacks are used in JavaScript.

## Filtering Using Callbacks

Another application of callback functions appears when we iterate over an array of values in order to filter down the values into a smaller list.

JavaScript's Array offers a `filter` method that we can use to iterate through the elements and return either `true` or `false` - indicating whether the element should be included in the results.

Let's see it in action.

```javascript
const numbers = [1, 2, 3, 4, 5, 7, 10, 14, 17, 18];
const evens = numbers.filter(function(num) {
  return num % 2 === 0;
});
console.log("Subset of even numbers:", evens);
```
> #### Tip
> 
> Paste the above code in your `node` REPL to verify its results.

<div></div>

> #### Question
> Can you spot the callback function in the above example? What is it responsible for and what is it named?

????wheres-callback-n-why
The callback function in the code above is: 

```javascript
function(num) {
  return num % 2 === 0;
}
```

Its job is to take in a number and return `true` if the number is divisible by 2, and `false` otherwise.

Since we see no name attached to this function, it's unnamed and therefore an _anonymous function_.
????

> #### Information
> Check out MDN for [more information about `Array.prototype.filter`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter).

## Setup

> #### Instruction
> Create another folder within `functions` called `filtering`.

<div></div>

> #### Instruction
> Create a file `passingGradesOnly.js` within the folder.

## Challenge

Given the following collection of grades:

```javascript
const grades = [73, 69, 3, 100, 50, 70, 69, 88, 95, 77, 35];
```

> #### Instruction
> Write code to filter this list down to only passing grades.

This node script should print out passing grades to the console. Passing grades for this scenario can be those that are 70 or above.

## Tips

- Use the Array `filter` function (as shown previously) to print out only the passing grades. 
  - Start by declaring the callback function and then later refactor it to be inline and anonymous, or start with an anonymous function to begin with. 
- Convert the anonymous function into an arrow function in order to get some practice with them.

## Complete Assignment

> #### Instruction
> Create a gist to use for submission.

Once finished with the challenge, please create a secret gist to submit the solution.

