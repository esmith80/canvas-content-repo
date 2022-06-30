---
uuid: 927e6f91-ec17-4c70-8264-0c14690ee444
section: 9ce11024-9346-45bb-8dbc-c1e6f562ef4f
duration: 30
---

Time to practice some of our newly acquired object iteration skills!

Lodash has a function `findKey` and we're going to implement something similar but simpler. It will help us search for a key on an object where its value matches a given value.

## Setup

> #### Instruction 
> Create `findKeyByValue.js` in your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch findKeyByValue.js
```

> #### Instruction 
> Copy your `assertEqual` function into this new file.

It would be nice to make use of our handy `assertEqual` function. Copy it from its source file and paste it in to the top of `findKeyByValue.js`. <small>In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will have to do.</small>

## Challenge

> #### Instruction
> Implement the function `findKeyByValue` which takes in an object and a value. It should scan the object and return the first key which contains the given value. If no key with that given value is found, then it should return _undefined_.

While this function is similar to Lodash's [`findKey`](https://lodash.com/docs/4.17.11#findKey) function, the second argument is different. This is done to keep our challenge more relevant and simpler for now.

![](https://d.pr/i/qUwoXU+)

> #### Instruction 
> Use `assertEqual` to write test cases for various scenarios.

The tests should be written below the definition of your function. 

Here are some test assertions for you to implmement and make pass, but you should write a few more: 

```javascript
const bestTVShowsByGenre = { 
  sci_fi: "The Expanse",
  comedy: "Brooklyn Nine-Nine",
  drama:  "The Wire"
};

assertEqual(findKeyByValue(bestTVShowsByGenre, "The Wire"), "drama");
assertEqual(findKeyByValue(bestTVShowsByGenre, "That '70s Show"), undefined);
```

## Tips

**Spoiler Tip 1**:
????
Consider using the [`Object.keys`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys) function to help you easily search through all the object keys.
????

**Spoiler Tip 2**:
????
Consider using `for...of` to loop over the keys returned by `Object.keys`.
????

## Complete Assignment

Once you've implemented the function and are satisfied with your test assertions, you can push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.
