

While implementing `tail` [previously](/fba20c56-49de-48cc-8ba1-fc7cf38821c8) we came across another problem: JS doesn't allow us to easily compare arrays. This made the test code for our function more cumbersome.

Let's fix that by first implementing a function that can compare two arrays for a perfect match.

## Setup

> #### Instruction 
> Create `eqArrays.js` in your your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch eqArrays.js
```

> #### Instruction 
> Copy your `assertEqual` function into this new file.

It would be nice to continue using of our handy [`assertEqual` function](/e41be440-3479-4185-a66f-d65435c3b7b2). Copy it from its source file and paste it in to the top of `eqArrays.js`. <small>As mentioned before, in the future we will employ a better approach to sharing functions between different files. Until then, this copy/paste approach will have to do.</small>

## Challenge

> #### Instruction
> Implement a function `eqArrays` which takes in two arrays and returns true or false, based on a perfect match. 

```javascript
eqArrays([1, 2, 3], [1, 2, 3]) // => true
eqArrays([1, 2, 3], [3, 2, 1]) // => false

eqArrays(["1", "2", "3"], ["1", "2", "3"]) // => true
eqArrays(["1", "2", "3"], ["1", "2", 3]) // => false
```

> #### Instruction 
> Use `assertEqual` to write test cases for various scenarios. 

The tests can be written below the definition of your function. Here's one example to get you started.

```javascript
assertEqual(eqArrays([1, 2, 3], [1, 2, 3]), true); // => should PASS
```

Please write out the rest of the assertions.

> #### Warning
> It's okay for `eqArrays` to _not_ return true for nested arrays or arrays of objects that are identical. We will save this "deeper" problem for another day. 

## Complete Assignment

Once you've implemented the function and are satisfied with your various test cases, it's time to push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.

