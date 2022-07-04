

While the `assertEqual` is great at comparing primitive types (like numbers and strings), we could use another function for asserting that two arrays are equal.

Assuming that you've already completed the previous challenge of [implementing `eqArrays`](/a0a53751-5f17-4eaf-95a1-b7a2d2b4baa0), most of the leg work required to implement this is already done.

## Setup

> #### Instruction 
> Create `assertArraysEqual.js` in your your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch assertArraysEqual.js
```

> #### Instruction 
> Copy your `eqArrays` function into this new file.

Your assertion function should ideally leverage this recently implemented function.

## Challenge

> #### Instruction
> Implement `assertArraysEqual` which will take in two arrays and `console.log` an appropriate message to the console. 

The message will be similar to that of `assertEqual`. In fact, you could refer to the code for `assertEqual` to help you implement this. Instead of doing a simple `===` check though, this assertion function will make use of your `eqArrays` function for array comparison.

> #### Warning
> Functions that do not `return` values and instead print out messages to the console are more difficult to test using assertions. This is because we cannot simply compare their return value to an expected value.

For this reason, we will not be writing assertions (test code) for `assertArraysEqual`. That said, you can and should call the function below its declaration and visually ensure that the message printed to the console is accurate.

## Complete Assignment

Once you've implemented the function and are satisfied with your manual verification of it, you can push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.
