

Often times we need to filter our data by removing some unwanted items, so that we can focus on the "good stuff" that we need. An example of this is all the candy kids get while _[trick-or-treating](https://en.wikipedia.org/wiki/Trick-or-treating)_ for Halloween. Many of these kids create a separate pile of candy which doesn't include all the stuff that they don't like (I hated getting _Dubble Bubble_ as a kid!)

It's for tasks like this that our function `without` can come in handy.

> #### Information
> Here is lodash's documentation for its `without` function: <https://lodash.com/docs/4.17.11#without>

<div></div>

> #### Warning
> We strongly suggest _not_ looking at the implementation for this function within lodash. It is over-engineered for what we need here and may lead to further confusion. That said, you could take a look at it _after_ successfully implementing your version.

## Setup

> #### Instruction 
> Create `without.js` in your your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch without.js
```

> #### Instruction 
> Copy your `assertArraysEqual` and `eqArrays` functions into this new file.

In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will have to do.

## Challenge

> #### Instruction
> Implement `without` which will return a subset of a given array, removing unwanted elements. 

This function should take in a `source` array and a `itemsToRemove` array. It should return a new array with only those elements from `source` that are not present in the `itemsToRemove` array.

Here are a couple examples, but please don't limit your testing to just these scenarios: 

```javascript
without([1, 2, 3], [1]) // => [2, 3]
without(["1", "2", "3"], [1, 2, "3"]) // => ["1", "2"]
```

> #### Instruction 
> Use `assertArraysEqual` to write test cases for various scenarios. 

The tests can be written below the definition of your function. 

> #### Warning
> It's okay for `without` to _not_ function correctly when using nested arrays or arrays of objects. We will save this "deeper" problem for another day. 

<div></div>

> #### Instruction
> Write a test case to make sure that the original array is not modified.

Among your test cases, be sure to include an important test that is easy to overlook: The `without` function should be returning a new array and _not_ modify the original array that is passed in. Let's write a test case to ensure this:

```javascript
const words = ["hello", "world", "lighthouse"];
without(words, ["lighthouse"]); // no need to capture return value for this test case
// Make sure the original array was not altered by the without function
assertArraysEqual(words, ["hello", "world", "lighthouse"]);
```

## Complete Assignment

Once you've implemented the function and are satisfied with your test assertions, you can push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.
