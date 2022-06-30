---
uuid: fba20c56-49de-48cc-8ba1-fc7cf38821c8
section: 9ce11024-9346-45bb-8dbc-c1e6f562ef4f
duration: 30
tags: arrays
---

This challenge will help you further practice working with arrays and writing assertions.

Instead of the "head", sometimes we need the "tail" of an array. The tail is not the last element of the array. The tail is meant to be _every element except the head (first element) of the array_.

![Illustration: tail of an array](https://d.pr/i/LR5q78+)

[//]: # (Editable image located here: https://drive.google.com/file/d/1hkSxltKPBlubIUstxn8VuMlvfCIBmIUj/view)

> #### Information
> Here is Lodash's documentation for its `tail` function: <https://lodash.com/docs/4.17.11#tail>

<div></div>

> #### Warning
> We strongly suggest _not_ looking at the implementation for this function within lodash. It is over-engineered for what we need here and may lead to further confusion. That said, you could take a look at it _after_ successfully implementing your version.

## Setup

> #### Instruction 
> Create `tail.js` in your your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch tail.js
```

> #### Instruction 
> Copy your `assertEqual` function into this new file.

It would be nice to continue using of our handy `assertEqual` function. Copy it from its source file and paste it in to the top of `tail.js`. In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will have to do.

## Challenge

> #### Instruction 
> Create a function `tail` which returns the "tail" of an array: everything except for the first item (head) of the provided array.

Your function should not modify the array that is passed in. It should return a new array.

> #### Warning
> Our `assertEqual` function is too simple to compare array values. JavaScript doesn't allow the use of `===` or `==` to compare two arrays. 

Try out the equality checks between arrays in the `node` REPL to confirm the results shown below.

```javascript
[1, 2, 3] === [1, 2, 3] // => false
[1, 2, 3] == [1, 2, 3] // => false
```

Therefore, we cannot expect this assertion to behave correctly:

```javascript
const result = tail(["Hello", "Lighthouse", "Labs"]);
assertEqual(result, ["Lighthouse", "Labs"]); // => will always fail!
```

> #### Question
> There is a workaround to this problem where we could still use our simple `assertEqual` to test out our `tail` function. How?
> Spend some time to think of and/or discuss a possible solution with your peers prior to exposing the answer below.

????how-to-assertequal-still
Instead of comparing arrays, a workaround to this limitation could be to compare the values of the returned tail array directly, like this:

```javascript
// Test Case 1: Check the returned array elements
const result = tail(["Hello", "Lighthouse", "Labs"]);
assertEqual(result.length, 2); // ensure we get back two elements
assertEqual(result[0], "Lighthouse"); // ensure first element is "Lighthouse"
assertEqual(result[1], "Labs"); // ensure second element is "Labs"

// Test Case 2: ...
// ...
```
????

> #### Instruction
> Write a test case to make sure that the original array is not modified.

The `tail` function should be returning a new array and _not_ modify the original array that is passed in. Let's write a test case to ensure this:

```javascript
// Test Case: Check the original array 
const words = ["Yo Yo", "Lighthouse", "Labs"];
tail(words); // no need to capture the return value since we are not checking it
assertEqual(words.length, 3); // original array should still have 3 elements!
```

### Tips

You should always be thinking about other scenarios to test. Here are some such examples and how they should be handled:

- An array with only one element should yield an empty array for its tail
- An empty array should yield an empty array for its tail

## Don't Forget Your Linter!

> #### Instruction
> If you haven't already done so, run ESLint and fix any errors and warnings.

```sh
eslint tail.js
```

## Complete Assignment

Once you've implemented the function and are satisfied with your various test cases, it's time to push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.

