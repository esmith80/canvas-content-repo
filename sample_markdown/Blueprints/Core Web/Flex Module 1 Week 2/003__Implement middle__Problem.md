

We are going to continue practicing our ability to work with arrays. To that end, here's one last array function to implement in Lotide before we get into objects.

## Middle

While lodash does support `head` and `tail` functions for arrays, it does not have a `middle` function. Alas, `middle` is the forgotten child. 

_Pretend there's a funny Malcolm In The Middle gif here._ 

![Two arrays: first of range 0 to 6 where 3 is the middle, second of range 0 to 5 where both 2 and 3 are the middle.](https://d.pr/i/v0Tl5u+)

## Setup

> #### Instruction 
> Create `middle.js` in your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch middle.js
```

> #### Instruction 
> Copy your `assertArraysEqual` and `eqArrays` functions into this new file.

It would be nice to make proper use of our brand new `assertArraysEqual` function to test functions like `middle` that return arrays. Copy and paste it, along with its accompanying `eqArrays` function from the appropriate source file. 

In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will have to do.

## Challenge

> #### Instruction
> Implement `middle` which will take in an array and return the middle-most element(s) of the given array.

The `middle` function should return an array with only the middle element(s) of the provided array. This means that the length of the returned elements could vary. 

* For arrays with one or two elements, there is no middle. Return an empty array.

```javascript
middle([1]) // => []
middle([1, 2]) // => []
```

* For arrays with odd number of elements, an array containing a single middle element should be returned.

```javascript
middle([1, 2, 3]) // => [2]
middle([1, 2, 3, 4, 5]) // => [3]
```

* For arrays with an even number of elements, an array containing the two elements in the middle should be returned

```javascript
middle([1, 2, 3, 4]) // => [2, 3]
middle([1, 2, 3, 4, 5, 6]) // => [3, 4]
```

> #### Instruction
> Write test assertions for the various scenarios with `middle` 

We can and should use the `assertArraysEqual` function for testing our new function. That's why we brought it in here to begin with.

> #### Warning
> You may wonder if your `middle.js` file is supposed to be this long. 

Due to the copy/pasted assertion functions, your test code will indeed take up a big chunk of the file. The flow of it should look like this:

```javascript
// TEST/ASSERTION FUNCTIONS
const eqArrays = function(...) {
  //...
}

const assertArraysEqual = function(actual, expected) {
  //...
}

// ACTUAL FUNCTION
const middle = function(array) {
  //...
}

// TEST CODE
// ...
```

## Complete Assignment

Once you've implemented the function and are satisfied with your test assertions, you can push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.
