---
uuid: 6867199c-055c-43f0-8c7f-699c7eebfc1b
section: 9ce11024-9346-45bb-8dbc-c1e6f562ef4f
duration: 30
type: Challenge
name: "Implement letterPositions"
outcomes:
  - 5c13998e-43bc-4590-ba30-1ca1d6118cb4
  - 3abe17e9-41c9-485a-bcad-39f49ed86a8a
  - eb5c730b-5ef1-4e7a-8428-fa7f32f99f35
  - cc0a652f-acdf-4c4c-9d3b-d4a86542bd9b
---

This challenge is similar to the [countLetters activity](/9806491e-20f7-49b6-8541-d7268d03504a) and allows us to spend some more time solving problems with objects.

We'll implement a new function `letterPositions` which will return all the indices (zero-based positions) in the string where each character is found.

For each letter, instead of returning just one number to represent its number of occurrences, multiple numbers may be needed to represent all the places in the string that it shows up.

## Setup

> #### Instruction 
> Create `letterPositions.js` in your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch letterPositions.js
```

## Challenge

> #### Instruction
> Implement a function called `letterPositions`.

```javascript
const letterPositions = function(sentence) {
  const results = {};
  // logic to update results here
  return results;
};
```

### Step 1: Define Object Structure To Return

> #### Question
> What would the resulting object look like with the same example string that we used before (`"lighthouse in the house"`)? 

Keep in mind that we are supposed to skip spaces.

????resulting-object
```javascript
{ 
  l: [0],
  i: [1, 11],
  g: [2],
  h: [3, 5, 15, 18],
  t: [4, 14],
  o: [6, 19],
  u: [7, 20],
  s: [8, 21],
  e: [9, 16, 22],
  n: [12]
}
```
????

### Step 2: Write A Test

> #### Instruction 
> Copy your previously implemented [`assertArraysEqual`](/88e16496-74e9-45b6-9b96-c7fb28c20c48) and [`eqArrays`](/a0a53751-5f17-4eaf-95a1-b7a2d2b4baa0) functions into this file.

<div></div>

> #### Instruction
> Write a test with a small string (eg: `"hello"`)

Use `assertArraysEqual` to compare the 4 letters and their expected positions. There is a tip about how to write this line of code in the _Tips_ section below, in case you are stuck.

You should expect your test to fail but also have an idea of what the error message will likely be, before you run your code.

### Step 3: Implement the Function

> #### Instruction
> Implement the logic of the function.

Try to be on your own for this one, though there are some hidden tips included below. :)

### Tips

We suggest that you only expand these tips if you are truly stuck on how to logically solve this problem.

**Testing Tip:** _(Toggle if you're not sure how to use `assertArraysEqual` or would like to check your solution)_

????
Your test code should look something like this:

```javascript
assertArraysEqual(letterPositions("hello").e, [1]);
```
????

**Looping Tip:**
????
Consider using a typical `for(let i = 0; i < n; i++)` loop since it works with indices which are needed for the results. Alternatively you could use `for..of` to loop over the string but then manage your own 0-based counter using a variable and incrementing it within the loop.
????

**Array Creation Tip:**
????
For each letter in your `results` object, create an array if one is not already there, before trying to push new numbers into them. Do not create a new array without checking if one is already there, otherwise you will always end up with an array of one element!
????

## Complete Assignment

Once you've implemented the function and are satisfied with your testing of it, you can push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.
