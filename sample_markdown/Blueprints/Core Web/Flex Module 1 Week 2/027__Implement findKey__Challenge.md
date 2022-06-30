---
uuid: 8cdde248-429b-48a0-8b63-5956d7a94aed
section: 9ce11024-9346-45bb-8dbc-c1e6f562ef4f
duration: 45
---

Not too long ago, we [implemented a `findKeyByValue` function](/927e6f91-ec17-4c70-8264-0c14690ee444) in Lotide. It was similar to, but more limited than, `findKey` from Lodash. Now that we know about callbacks, let's make a more complex version of this in a similar way to what Lodash has.

Again this challenge will help you practice your comfort with crafting higher-order functions that accept a callback.

> #### Information
> Here is Lodash's documentation for its `findKey` function: <https://lodash.com/docs/4.17.11#findKey>

<div></div>

> #### Warning
> Lodash's example code for `findKey` shows us that instead of just supporting callback functions, it can support _"iteratee shorthand"_ using objects and arrays. We can safely ignore these examples since our function will be simpler and not need to support this.

## Setup

> #### Instruction 
> Create `findKey.js` in your Lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch findKey.js
```

> #### Instruction 
> Copy our `assertEqual` function into this new file.

## Challenge

> #### Instruction
> Implement the function `findKey` which takes in an object and a callback. It should scan the object and return the first key for which the callback returns a truthy value. If no key is found, then it should return _undefined_. 

### Example

```javascript
findKey({
  "Blue Hill": { stars: 1 },
  "Akaleri":   { stars: 3 },
  "noma":      { stars: 2 },
  "elBulli":   { stars: 3 },
  "Ora":       { stars: 2 },
  "Akelarre":  { stars: 3 }
}, x => x.stars === 2) // => "noma"
```

### Testing

> #### Instruction 
> Use `assertEqual` to write test cases for various scenarios.

The tests should be written below the definition of your function. 

## Tips

Feel free to take a look at our solution for `findKeyByValue`. Some of the core logic will be the same (such as the looping over object keys part).

## Complete Assignment

With the function implemented and satisfactory tests in place, we can push our work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your Lotide git repository.
