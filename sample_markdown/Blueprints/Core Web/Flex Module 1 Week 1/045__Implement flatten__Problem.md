

Our imaginary trick-or-treater has returned from their run. Some of their neighbours just gave them smaller bags of candy. Their big bag of treats contains smaller bags. Ugh! They want to just take out all of the candy and get it into one single bag, making it easier to eat them later!

`flatten` is a function which does something like this. Given an array with other arrays inside, it can flatten it into a single-level array.

> #### Information
> Here is lodash's documentation for its `flatten` function: <https://lodash.com/docs/4.17.11#flatten>

<div></div>

> #### Warning
> We strongly suggest _not_ looking at the implementation for this function within lodash. It is over-engineered for what we need here and may lead to further confusion. That said, you could take a look at it _after_ successfully implementing your version.


## Setup

> #### Instruction 
> Create `flatten.js` in your your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch flatten.js
```

> #### Instruction 
> Copy your `assertArraysEqual` and `eqArrays` functions into this new file.

<small>In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will have to do.</small>

## Challenge

> #### Instruction
> Create a function `flatten` which will take in an array containing elements including nested arrays of elements, and return a "flattened" version of the array. 

The _lodash_ implementation can handle seemingly _unlimited_ levels of "nested" arrays (arrays containing arrays containing arrays containing ... you get the point). Our function however, will for now be much simpler and _only handle one level of nesting_.

```javascript
flatten([1, 2, [3, 4], 5, [6]]) // => [1, 2, 3, 4, 5, 6]
```

> #### Warning
> The infinite-nesting problem is a great one to be solved using a technique called **recursion**. You are not expected to apply that here, which is why we've limited it to only one level of nesting. We will cover recursion fairly soon, and you are welcome to return to this problem at that time.

### Tips

As you loop through the outer array, each element could either be an array or not. While you could do a [type check using `typeof`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof) to determine what each element is, there's a better way.

> #### Question
> It's important to create a concise and accurate google search string. What could you Google for when trying to determine if something in JS is an Array?

????what-to-google
Try ["javascript check type is array"](https://www.google.com/search?q=javascript+check+type+is+array&oq=javascript+check+type+is+array) on Google. It's important to be concise but also include enough context. We see students forgetting to include language specific context like "javascript".
????

> #### Question
> What did you find that seems like a better alternative to `typeof` for identifying arrays?

????better-than-typeof
[`Array.isArray`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/isArray) seems like what we need! It shows up pretty high up in our results and sounds like the right thing. Its introduction describes exactly what we need:

> The `Array.isArray()` method determines whether the passed value is an `Array`.

 Give it a try!
????


> #### Question
> Why is this approach better than `typeof`?

????why-better-than-typeof
`typeof` for arrays returns "object":

```javascript
typeof([]) // => "object"
```


Indeed an array is _technically_ an object, though most of the time, we don't need to think of it that way. However, the real problem here is that the same output happens for all objects, including objects that are definitely not arrays! 

```javascript
typeof({}) // => "object"
```

While _"object"_ does help us separate array data from other types like strings, numbers, and the like, it doesn't give us complete confidence that we're dealing with an array here. 

`Array.isArray` overcomes this confusion by being a more specific check.
????


## Complete Assignment

Once you've implemented the function and are satisfied with your test assertions, you can push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.
