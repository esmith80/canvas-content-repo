---
uuid: f8583ec7-c3b5-40ad-bcee-ec4ae811c2b6
section: 9ce11024-9346-45bb-8dbc-c1e6f562ef4f
duration: 75
---

Let's implement another useful utility function into Lotide. In doing so we will get more hands on experience in implementing and testing higher-order functions which use callbacks.

## Setup

> #### Instruction
> Create a file `takeUntil.js` in your Lotide project directory.

## Challenge

> #### Information
> Lodash has a `takeWhile` function, the documentation for which can be found here: <https://lodash.com/docs/4.17.11#takeWhile>

<div></div>

> #### Warning
> Lodash's example code for `takeWhile` shows us that instead of just supporting callback functions, it can support _"iteratee shorthand"_ using objects and arrays. We can safely ignore these examples since our function will be simpler and not need to support this.

We will be implementing a function quite similar to this one, but isn't present in their library: **`takeUntil`**. 

It will take in two parameters as well:

1. The array to work with
2. The callback (which Lodash calls "predicate")

```javascript
const takeUntil = function(array, callback) {
  // ...
}
```

The function will return a _"slice of the `array` with elements taken from the beginning."_ It should keep going until the callback/predicate returns a _truthy_ value. 

To keep things simple, the callback should only be provided one value: The item in the array. 

> #### Instruction
> Implement `takeUntil` which will keep collecting items from a provided array until the callback provided returns a truthy value. 

Take a look at the expected input and output below to get a better understanding of how it would work.

### Expected Input

For illustration purposes, here are some examples of how our function could be used and what the expected results would look like.

```javascript
const data1 = [1, 2, 5, 7, 2, -1, 2, 4, 5];
const results1 = takeUntil(data1, x => x < 0);
console.log(results1);

console.log('---');

const data2 = ["I've", "been", "to", "Hollywood", ",", "I've", "been", "to", "Redwood"];
const results2 = takeUntil(data2, x => x === ',');
console.log(results2);
```

### Expected Output

```javascript
[ 1, 2, 5, 7, 2 ]
--
[ 'I\'ve', 'been', 'to', 'Hollywood' ]
```

### Testing

Don't forget to test the function!

> #### Instruction
> Bring in our `assertArraysEqual` function (and associated `eqArrays` function) in order write some easy-to-read test cases.

Since `takeUntil` returns arrays, the best assertion function to use would be `assertArraysEqual` to compare its return value against an expected array.

## Tips

> #### Question
> Does your `takeUntil` function need to loop through the _entire_ array once the callback returns a truthy value? If not, how can we make it stop?

## Complete Assignment

With the function implemented and satisfactory tests in place, we can push our work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your Lotide git repository.
