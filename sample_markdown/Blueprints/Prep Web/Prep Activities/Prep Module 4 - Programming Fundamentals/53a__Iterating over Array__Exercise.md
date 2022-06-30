---
uuid: 67f5533b-6418-4a2a-af0a-330efb6b415b
name: 'Iterating Over Arrays'
type: 'Assignment'
duration: 30
outcomes:
# eljs - while and do loops
  - c213a8b7-d6b5-43fe-b929-4ff3d650922e
  - 5e7abeea-b9fb-4846-85c6-2c3046118bc1
  - 65830b83-8253-46f6-9397-eb5910c77079
  - 0d261845-b437-42d9-8e07-8e0971365911
  - 97a16068-26c6-4bc0-b7a0-72fd9ae3deb6
  - 497e92d5-b06e-405e-be22-a5f34d1a060d
  - 1000753a-07ee-446c-b7c8-90d831a4d2dd
# eljs - for loops
  - 789a1453-24cf-4195-843c-60eb8d07eb92
  - 7a9982bc-74d2-403f-88b6-31e35db4573c
# eljs - break
  - 33c356ad-06d5-418e-88a4-6ebf43b01388
  - 2438a095-c7fc-4ed7-82e8-dd7fae60ad77
# exercises
  - 20c81186-140f-4cd4-85ea-880e12c7c465
---

In this exercise, we're going to practice iterating over arrays with two common types of loops: the `for` and the `while`.

## Arrays

We need to store and organize all of the items we need to pack to go camping.

```javascript
const packingList = ["tent", "bug spray", "sleeping bag"];
```

Now how can we print out all of those items? 

```js
console.log(packingList[0]);
console.log(packingList[1]);
console.log(packingList[2]);
```

If we wanted to print our packing list for camping to the console, we might print each array item one by one. This might be doable if we're just going away for a weekend and we only have a few items to take along. But what if we're moving across town? Our packing list would be much longer, and we'd hate to have to print out each item one by one. Thankfully, we can rely on JavaScript's looping constructs to help us out!

## Iterating Over an Array With `for`

We're moving, and we've made a list of all the kitchen items we want to take along. 

> #### Instruction
> Create a new JavaScript file for this exercise.

Create a file called `packing-list.js` in your `lighthouse-js-fundamentals` directory to tinker with all of the code examples in this exercise.

```javascript
const packingList = ["bowls", "plates", "pots", "pans", "eating utensils", "glasses", "cups", "cooking utensils"];

console.log("Kitchen stuff to pack:");
for (let i = 0; i < packingList.length; i++) {
  console.log(packingList[i]);
}
```

If we run this code, we can see that the program reminds us to pack all the items in our kitchen. Looking more deeply into the code, this works because we're declaring a counter variable called `i` (short for "index") that starts at 0, and increments by 1 at every step of a loop until it matches the length of our array, that is `packingList`. You might remember that to access an item in an array we index it.

```javascript
packingList[3];
```

Only we want to index *every* item, and so we've built a loop that increments an index variable `i`, which we can use to look into `packingList` one item at a time.

> #### Instruction
> Before continuing, commit `packing-list.js`.

## For Loops Start From 0

Every `for` loop that we've seen so far, always started it's repeat counter at 0 and not at 1. Most of our code so far could have worked if we started the counter at 1, or at any other number, as long as our condition made sure we incremented the counter ten times. But the reason we made the choice to start at 0, is because it's very common to use loops to work with the contents of an array, one at at time, and array indexing in JavaScript, and most languages, starts at 0.

## Iterating Over an Array With `while`

So `for` loops are a pretty good option when we want to iterate over items in an array. But that doesn't mean we can't use a `while` loop to do it. Modify your loop in `packing-list.js` to like the one below.

```javascript
console.log("Kitchen stuff to pack:");
let i = 0;
while (i < packingList.length) {
  console.log(packingList[i]);
  i++;
}
```

The result here will be exactly the same as before, but we've had to separate out the logic onto a few more lines.

> #### Instruction
> Before continuing, commit `packing-list.js`.

<div></div>

> #### Instruction
> Push all of your code to github.

Make sure that you've added and committed all of your files from this exercise. If you run `git status` from within the `lighthouse-js-fundamentals` directory, you should see the following message:

```terminal
nothing to commit, working tree clean
```

If there are changes that you have not yet committed, commit those first.

Once everything has been committed, push your code to github.

```terminal
git push origin master
```

## Conclusion

In this exercise, we learned how to iterate over an array using a `for` loop or a `while` loop. Loops and arrays are great tools to use together in most programming languages, no just JavaScript.
