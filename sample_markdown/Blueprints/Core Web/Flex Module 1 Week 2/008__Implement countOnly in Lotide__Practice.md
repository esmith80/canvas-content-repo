

The goal of this practice exercise is to work together on solving a problem using objects and in doing that show you how objects can be used in interesting ways.

Imagine that you're a kid again and playing with Lego - or an adult who still has the time to play with Lego. A big pile of lego blocks is dumped on the ground. Today you want to build a specific race car with it. The instructions for building it call for specific pieces. Before you can get started, you first need to sift through and make sure that all the pieces that you need to build your car are in the pile. 

This is the type of problem the Lotide `countOnly` function will allow us to solve!

## Introducing _countOnly_

Let's work together to implement `countOnly`. This function should take in a collection of items and return counts for a specific subset of those items. It won't count everything. In order to decide what to count, it will also be given an idea of which items we care about and it will only count those, ignoring the others. 

_Items_ in our case will be limited to _Strings_.

## Setup

> #### Instruction 
> Create `countOnly.js` in your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch countOnly.js
```

> #### Instruction 
> Copy your `assertEqual` function into this new file.

It would be nice to make use of our handy `assertEqual` function. Copy it from its source file and paste it in to the top of `countOnly.js`. <small>In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will have to do.</small>

## Function Behaviour

`countOnly` will be given an array and an object. It will return an object containing counts of everything that the input object listed.

![](https://d.pr/i/6B4i7p+)

As shown in the example image above, only keys which have a _truthy value_ should be counted in the resulting object. All other strings (either set to false or not included at all in the object) should _not_ be counted. That said, if a particular string is meant to be counted but does not exist in the input array (like "f" in the example above), it also does not have to be included in the final count.

## Initial Function Definition

> #### Instruction
> Start by declaring the function. 

Since we're going step by step, let's start with the smallest possible piece of code to start working towards our final solution.

```javascript
// allItems: an array of strings that we need to look through
// itemsToCount: an object specifying what to count
const countOnly = function(allItems, itemsToCount) {
}
```

The function should report back how many instances of each string were found in the `allItems` array of strings.

> #### Information
> Functions can only return one thing. That thing can (as we've seen) be a primitive data type, like a number, a boolean, `null` or a string. In some cases it makes sense to return an object.

Our function `countOnly` needs to return a proper report on all the strings found in the input array, and their respective counts. Therefore it will need to return an object that can represent the stats.

## Write A Test First

> #### Instruction
> Write the initial test code below the definition of your function. 

Read and understand it before adding it to the bottom/end of your code.

```javascript
const firstNames = [
  "Karl",
  "Salima",
  "Agouhanna",
  "Fang",
  "Kavith",
  "Jason",
  "Salima",
  "Fang",
  "Joe"
];

const result1 = countOnly(firstNames, { "Jason": true, "Karima": true, "Fang": true, "Agouhanna": false });

assertEqual(result1["Jason"], 1);
assertEqual(result1["Karima"], undefined);
assertEqual(result1["Fang"], 2);
assertEqual(result1["Agouhanna"], undefined);
```

> #### Question
> Why did we not use `assertEqual` to compare the resulting object (_result1_) directly? Why did we need to instead break our test case into three different assertion checks?

????why-not-comparing-objects
Our `assertEqual` function can only compare primitive values. We ran into this issue when comparing arrays and ended up implementing [`assertArraysEqual`](88e16496-74e9-45b6-9b96-c7fb28c20c48), if you recall. The same will need to be done with objects to make our test code cleaner. Until we have that specialized assertion function, we will do it this, more cumbersome way.
????

> #### Instruction
> Run your code to make sure that the three assertions are indeed failing, before we can work on fixing them.

We should see the following error: 

```terminal
TypeError: Cannot read property 'Jason' of undefined
```

> #### Question
> What does this error mean? What is it trying to say?

????whats-it-all-mean
`result1` is undefined and we are trying to access a property ('Jason') on undefined as though it were an object.
????

> #### Instruction
> Fix the error (and only the error) above by implementing a small step towards our solution code.

In order to fix the error, we can have our function define a new empty object called `results` and return it: 

```javascript
const results = {}
return results;
```

> #### Instruction
> This time, before running your code, form a hypothesis on what our next issue/error will be.

<div></div>
> #### Question
> What do you think our next error will be, now that we are returning an (albeit empty) object and not _undefined_?

????whats-next-error
When accessing property _Jason_ on an empty object, JS will not throw an error. It will instead give us back _undefined_ since the property does not exist on it.

The second check (for _Karima_) expects _undefined_ and will therefore _actually pass_! The first and last ones (for _Fang_ and _Jason_) will fail complaining because their expected counts will be compared with _undefined_.

```terminal 
🛑🛑🛑 Assertion Failed: undefined !== 1
✅✅✅ Assertion Passed: undefined === undefined
🛑🛑🛑 Assertion Failed: undefined !== 2
```
????

> #### Instruction
> Run your code to validate your hypothesis.

## Loop over allItems

In order to know how many _Jason's_ are in our list, we need to scan the entire list. Let's start with a simple loop and make sure it 'works.

> #### Instruction
> Add code to loop over all the items in the array and print them to the console. 

```javascript
const countOnly = function(allItems, itemsToCount) {
  const results = {};

  for (const item of allItems) {
    console.log(item);
  }

  return results;
}
```

The output should look like this:

```terminal
Karl
Salima
Agouhanna
Fang
Kavith
Jason
Salima
Fang
Joe
(... assertion output follows ...)
```

## Count them all

Although we're meant to count only the items that matter, a simpler next step (requiring lesser logic) is to simply count everything.

> #### Instruction
> Increment the count of each item into `results` as we encounter each string item in the array.

????
```javascript
// inside the loop, 
// increment the counter for each item:
//   set a property with that string key to:
//     the value that was already there (or zero if nothing there) with 1 added to it.
if (results[item]) {
  results[item] += 1;
} else {
  results[item] = 1;
}
```
????

> #### Instruction
> Create a hypothesis of what will happen when you run your code now. 

<div></div>

> #### Question
> Which assertions will pass and which will fail?

<div></div>

> #### Instruction
> Run the code to confirm or reject your assumption. 

## Only Count Specific Items

Lastly, we need to be more specific about what should be counted, ignoring the other items.

> #### Instruction
> Add an `if` condition to only increment our count in `results` if the item is found in the `itemsToCount` object.

????
```javascript
// inside the loop:
if (itemsToCount[item]) { 
  if (results[item]) {
    results[item] += 1;
  } else {
    results[item] = 1;
  }
}
```
????

> #### Instruction
> Confirm that all our tests are passing

If your tests are failing, roll up your sleeves and use this as an opportunity to practice more debugging. Remember that we always want to double check not only our logic, but also our test code. Either or both of them could have bugs!

## Conclusion

We took a fairly incremental (step-by-step) approach to solving a problem requiring the use of objects. Doing this allowed us to reinforce the key concepts of working with objects. We also took some time to appreciate good software development workflow by working in small steps as well as writing tests for our code. _Huzzah!_

## Complete Assignment

> #### Instruction 
> Commit and push the new file within your git repository.

Hopefully you were committing with each major step, but if not, please do so now. 
