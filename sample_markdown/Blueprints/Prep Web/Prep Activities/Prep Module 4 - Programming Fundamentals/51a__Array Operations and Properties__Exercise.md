---
uuid: b21257a6-aa67-4c32-8cc1-feb731a77f20
name: 'Array Operations and Properties'
type: 'Assignment'
duration: 90
outcomes:
# eljs - data structures
  - b66b6d8f-d177-4ce8-b596-ab2707f3824b
  - d48903f3-0395-4a88-957d-fc4f9ea274a3
  - 5128eee5-370e-494c-805a-e17500ba8032
  - 06f95f4e-8168-4faa-b618-874400c562e4
# eljs - properties
  - 25e1b892-acd0-4fcf-9483-fb5fd4e84f28
# eljs - methods
  - d90a4d5e-5b0d-4b40-8615-5103dd5fcd22
  - 50cdd7bb-2c1a-447a-ae88-cb84e83a417a
  - 1b9bc792-9543-49ff-a927-b17bac839173
# eljs - objects
  - 5c13998e-43bc-4590-ba30-1ca1d6118cb4
  - 7dc38d7d-e140-41b8-acd9-946fb74c21e6
  - 3abe17e9-41c9-485a-bcad-39f49ed86a8a
  - eb5c730b-5ef1-4e7a-8428-fa7f32f99f35
  - 8b8f75c2-f641-48d4-8fb6-8f0f3d3c30c3
  - cc7863b4-f754-43de-a108-f4f685aec962
  - c1b8ba8d-1db4-4c6c-a08b-83637bb24191
# eljs - mutability
  - 1f6b197a-9532-4a75-a0ce-8191e87c6b84
  - e865db0d-25c8-4c4e-872c-c5d065a07bf5
# exercises
  - ad2ef026-74ca-4bae-8d7e-3e8a3d2a50b2
  - c0029c2f-6ae8-4f89-a12a-fb4344af4816
---


If we have to store some related values, such as films by a particular director, we might use multiple variables.

```javascript
const director = "Steven Spielberg";
const film1 = "Jaws";
const film2 = "Raiders of the Lost Ark";
const film3 = "A.I."
```

We've only defined three films so far, but we know we'll need to declare many more; `Jurassic Park` isn't even in the list! How are we going to accomplish that cleanly, in a way that's maintainable and easy to manage?

In this exercise, we're going to practice declaring and manipulating a very helpful JavaScript data structure: the array.

## Array basics

The films from the previous example can be better represented using an array.

```javascript
const director = "Steven Spielberg";
const films = ["Jaws", "Raiders of the Lost Ark", "A.I."];
```

What have we accomplished? We've declared a variable named `director` pointing to a string value, and a variable named `films` pointing to an array of string values.

Arrays are special, built-in JavaScript objects designed for storing lists of values—in our case film titles. This greatly improves our code, as we no longer need to store many separate variables to refer to all the related values we want to work with. But how exactly do we work with arrays? By indexing them. 

```javascript
"My favourite " + director + " film is " + films[1];
```

What is the output of this line of code?

What we've done is *indexed* the `films` array. We've looked into `films` and pulled out the string at index `1`. The index refers to a value's place in an array, but unlike the counting we're using to in real life that starts at `1`, computers start counting at `0`. This means the first index of an array is `0`.

```javascript
"films at index 0: " + films[0];
"films at index 1: " + films[1];
"films at index 2: " + films[2];
"films at index 3: " + films[3];
```

Notice that when we try to look up the value at an index that is outside the range of our array, JavaScript will return `undefined`. Otherwise, it will return the value stored at a given index, and we can use it in any expression we'd like. In our case, since our array is a list of strings, we've pulled out each string and concatenated it to another.

But arrays can store more than just strings. In fact, they can store any kind of value or combination of values. For example, these are also valid arrays:

```javascript
const oddNumbers = [1, 3, 5, 7, 9];
const randomStuff = [1.15, "bicycle", true];
```

> #### Note
> Although we can combine different types inside an array, it's considered best practice to only store related values of the same type. So `randomStuff` is a bad array because the types are different and the values are unrelated. 

## Array operations

Now that we know how to declare arrays and index their values, let's take a look at how to add new values or modify existing ones. 

Lets reset the working variables in the node REPL, just to be sure that we all have the same data.

> #### Instruction
> Exit and re-enter the node REPL.

* Exit the node repl by pressing <kbd>Ctrl + d</kbd>.
* Fire up the node.js REPL again by typing `node` in the terminal and pressing <kbd>Enter</kbd>.
* Create the following variables in the REPL.

```javascript
const director = "Steven Spielberg";
const films = ["Jaws", "Raiders of the Lost Ark", "A.I."];
```

Now let's try some new things.

```javascript
films[2] = "Jurassic Park";
films;
films.push("A.I.");
films;
```

We can set a new value at an array's index by using variable declaration notation, but instead of setting a value to a variable we set it to a particular index: `films[2] = "Jurassic Park";`. The `films` array then looks like this:

`["Jaws", "Raiders of the Lost Ark", "Jurassic Park"]`

`"A.I."` is gone, and in its place we've put `"Jurassic Park"`. (The reason we've also typed the expression `films;` by itself was so the node REPL prints out the value of `films` for us).

To add `"A.I."` back, but at the end of the list, we used the `push` function: `films.push("A.I.");`. That may seem a bit strange; we've seen functions before, but we've never called them this way. We'll avoid the theoretical details of how this works, but for now you can think of `push` as a function that adds an item to the end of an array, and you call it *on* an array using dot notation (`films.push("A.I.");`). JavaScript will know you're trying to push a new value at the end of the specific array you want without you having to pass it in as an argument.

## Array properties

JavaScript arrays contain our data, but it's important to know that also have properties. One property of arrays that can be particularly useful is the `length` property. Let's return to our first example.

```javascript
director + " is the director of " + films.length + " films";
```

We can dynamically check how many items an array is holding by accessing its `length` property. The value of the property will always return you the number of items in the array without you having to update it yourself.

```javascript
films.push("E.T.");
director + " is the director of " + films.length + " films";
```

The console should now tell us that Spielberg is the director of 5 films, whereas previously it was only 4.

## Conclusion

In this exercise, we learned more about JavaScript's array data structure. We practiced creating arrays, updating the values within an array, reading values from an array, and accessing properties on arrays.
