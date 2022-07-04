

While working more with objects recently, we've created functions that _return_ objects. When writing out assertions to test the return value of these functions, we quickly realized that our `assertEqual` can't be used directly. `assertEqual` can really only be used for checking [primitive](/ab07e19a-79dd-496a-9fb9-cf82209170b4) return types. 

> #### Warning
> If you're having trouble recalling the above problem, take a moment to navigate back to the [Implement countOnly in Lotide](/198ae70c-db55-467c-9b47-783d4f5cc7bd) activity to refresh your memory. Read the section that speaks to this problem by checking your (and our) answer to the following question: 
> 
> _Why did we not use `assertEqual` to compare the resulting object directly?_

You may also recall that we had run into a similar problem with comparing array data. To solve this we [implemented `eqArrays`](/a0a53751-5f17-4eaf-95a1-b7a2d2b4baa0) and then subsequently [implemented `assertArraysEqual`](88e16496-74e9-45b6-9b96-c7fb28c20c48) into our Lotide project.

It's time to do the same for _objects_ now, starting with `eqObjects`. This function implementation will require us to further practice problem solving through object key iteration again. Fun times!

## Setup

> #### Instruction 
> Create `eqObjects.js` in our lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch eqObjects.js
```

> #### Instruction 
> Copy our `assertEqual` function into this new file.

It would be nice to make use of our handy `assertEqual` function. Copy it from its source file and paste it in to the top of `eqObjects.js`. <small>In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will have to do.</small>

## Step 1: Function Definition

> #### Instruction
> Implement the definition for function `eqObjects` which will take in two objects and returns true or false, based on a perfect match.

Don't attempt to implement the function yet, just the definition, as shown below.

```javascript
// Returns true if both objects have identical keys with identical values.
// Otherwise you get back a big fat false!
const eqObjects = function(object1, object2) {
};
```

## Step 2: Primitives As Values (Tests)

> #### Instruction
> Start with a couple basic tests. One for true and one for false, as shown below.

<div></div>

> #### Warning
> Don't just copy the code below as the test code. Make use of the `assertEqual` function to print out your expectations so that we can verify that they are indeed failing at first.

```javascript
const ab = { a: "1", b: "2" };
const ba = { b: "2", a: "1" };
eqObjects(ab, ba); // => true

const abc = { a: "1", b: "2", c: "3" };
eqObjects(ab, abc); // => false
```

> #### Instruction
> Run the two tests to ensure that they are failing in the the way that we'd expect. 

Our function is currently returning `undefined` and the assertion should be failing due to that issue.

## Step 2: Primitives As Values (Implementation)

Our tests above are deliberately simple, only using objects that have primitive values. It's generally considered good practice to start with solving simple scenarios first and then add more logic from there. 

In this simple scenario, two objects are equal when:

- They have the same number of keys
- The value for each key in one object is the same as the value for that same key in the other object

> #### Instruction
> Implement the function in order to _pass_ the assertions written so far.

A reminder that we don't need to handle all scenarios yet. Instead, focus on solving only the primitive value scenario.

**Togglable Tip:** _Try to implement the solution here yourself and use this to ensure that your approach matches our expectations. That said, expand the tip if you're stuck._
????
Here is one possible way of structuring our function's logic:

- First, use the `Object.keys` function on both objects and compare their _lengths_. If not equal, there's no point in going further: return `false`
- After that check, loop through the keys returned by `Object.keys` for one of the objects (not both). Use `for..of` since the keys are an array. Other loop types can work too, but this one is most elegant and idiomatic, thanks to ES6
  - Inside our loop, compare both objects' values for that key. Use `===` to ensure that the types are the same!
  - As soon as there is _not_ a match, we can `return false`
- Our control flow will therefore only get to the end of the loop if all the keys matched. We can and should thus `return true` at the end (after the loop)
????

## Step 3: Arrays As Values (Tests)

Handling primitive values is a great start! What if the objects have array values though?

```javascript
const cd = { c: "1", d: ["2", 3] };
const dc = { d: ["2", 3], c: "1" };
eqObjects(cd, dc); // => true

const cd2 = { c: "1", d: ["2", 3, 4] };
eqObjects(cd, cd2); // => false
```

> #### Instruction
> Write out the `assertEqual`-based tests using the code shown above, and ensure that they are failing.

<div></div>

> #### Question
> Wait a minute! We'll find that the second test using `cd2` will indeed return false, and therefore will pass our assertion. Why is that?

????wtf-why-passing
Array checks using simple `===` will always return false. So in the case of comparing `cd` and `cd2` it will return false not because these contain arrays with different values, but simply because they are two separate arrays no matter what. This problem is the premise for why we needed to [implemenent `eqArrays`](/a0a53751-5f17-4eaf-95a1-b7a2d2b4baa0) in the first place!
????

## Step 4: Arrays As Values (Implementation)

In order to support array value comparisons, the first thing we can do is bring in our trusty `eqArrays` function. 

> #### Instruction
> Copy/paste our `eqArrays` function into this file.

Next, we ought to use this function when we encounter arrays. 

> #### Instruction
> Modify our implementation to use `eqArrays` when there is an array value being encountered for a key, ensuring that our newly added array tests fully pass.

**Toggleable Tip:** _Try to implement the solution here yourself and use this to ensure that your approach matches our expectations. That said, expand the tip if you're stuck._
????
Within our loop, we can use `Array.isArray` against both values to see if array comparisons need to be made. 

- If both values are indeed arrays: pass them to `eqArrays` and ensure that it returns true. 
- Otherwise (`else`): assume that they are primitives and continue to use `===` to compare the two values.
????

## Step 5: Objects As Values (Discussion)

> #### Question
> You may be wondering: _We're handling arrays and primitives as values, but what about objects as values?_ In other words, shouldn't our comparison function support objects containing other objects?

The answer is _yes_. However, for now we will leave our `eqObjects` function _"incomplete"_ by not handling this scenario. That said, feel free to think about how you'd do this. We'll be coming back to it soon enough :)

## Complete Assignment

Once you've implemented the function and are satisfied with the various test cases, it's time to push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your Lotide git repository.
