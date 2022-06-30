---
uuid: cce0707b-2160-470b-bc43-98f3f7d10da4
section: 9ce11024-9346-45bb-8dbc-c1e6f562ef4f
duration: 30
---

As a continuation of the previous exercise, it's time to create our `assertObjectsEqual` function which will help us easily test functions that return objects.

Assuming that you've already completed the previous exercise of [implementing `eqObjects`](/8020fb77-4f7c-45a0-9be4-4175c324cc08), most of the leg work required to implement the assertion function is already done.

## Setup

> #### Instruction 
> Create `assertObjectsEqual.js` in your your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch assertObjectsEqual.js
```

> #### Instruction 
> Copy your `eqObjects` function into this new file.

Your assertion function should leverage this recently implemented function.

## Challenge

> #### Instruction
> Implement `assertObjectsEqual` which will take in two objects and `console.log` an appropriate message to the console. 

```javascript
// FUNCTION IMPLEMENTATION
const assertObjectsEqual = function(actual, expected) {
  // Implement me!
};
```

The message printed to the console should be similar to that of `assertArraysEqual`. In fact, you could refer to the code for `assertArraysEqual` to help you implement this. Instead of doing an `eqArrays` check though, this assertion function will make use of your `eqObjects` function for object comparison.

> #### Warning
> Functions that do not `return` values and instead print out messages to the console are more difficult to test using assertions. This is because we cannot simply compare their return value to an expected value.

For this reason, we will not be writing assertions (test code) for `assertObjectsEqual`. That said, you can and should call the function below its declaration and visually confirm that the message printed to the console is accurate.

### Fixing The Object Output Issue

> #### Warning
> We quickly realize while looking at the assertion messages that they print out objects as `[object Object]` which is not very descriptive and will not help with our debugging efforts.

```temrinal
✅✅✅ Assertion Passed: [object Object] === [object Object]
🛑🛑🛑 Assertion Failed: [object Object] !== [object Object]
```

As a workaround to this problem, we can modify our function to use the util library's inspect function. The very first thing we should do in our function is import the library so that the function can use it.

```javascript
const assertObjectsEqual = function(actual, expected) {
  const inspect = require('util').inspect; // <= add this line
  // ...
};
```

Let's make use of the inspect function. Here is an example use of it to help you apply it in our function: 

```javascript
console.log(`Example label: ${inspect(actual)}`);
```

With this problem resolved, you should see more detailed object output to the console:

```terminal
✅✅✅ Assertion Passed: { a: '1', b: 2 } === { b: 2, a: '1' }
```

## Complete Assignment

Once you've implemented the function and are satisfied with your manual verification of it, you can push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.


