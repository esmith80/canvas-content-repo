---
uuid: 370b2225-1d8f-4878-9eb5-224319083eeb
duration: 120
allow_submissions: true
name: "Callbacks - For Sorting"
stretch: true
tags: focal-adv
outcomes:
  - 46f3a264-4c91-470d-ae0c-d4365d559c6d
  - d7a4a54a-7551-4768-8127-f7bc2a22b899
  - 71923a74-7576-47e5-a52f-ebb9fbe5e504
---

In this activity you will learn about how to sort collections and you'll get a chance to apply what you have learned about anonymous functions.

## Reading

JavaScript's arrays come equipped with a default sorting function, `.sort()`. 

> #### Instruction
> 
> Read through the MDN documentation for the [`.sort()` function](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort).

Then, we'll discuss some of its features and shortcomings.


### Sort

JavaScript provides a convenient way to sort arrays of simple elements.

Run this in your `node` REPL, then check the order of values in the array:

```javascript
const array = ["John", "Bob", "Alice", "Mary"];
array.sort();
```

Looks good.

How about this:

```javascript
const array = [5, 2, 1, 3, 4];
array.sort();
```

Makes sense.

But how about this...

```javascript
const array = [10, 2, 5, 1, 9];
array.sort();
```

Uh oh.... why is it `[1, 10, 2, 5, 9]` ? What's that `10` doing there?

The reason for this is due to the default sorting behavior in JavaScript treats elements as strings, therefore numbers are sorted _alphabetically_ (this is known as "lexigraphical sorting").

Most programmers agree that lexigraphical sorting is a terrible default for JavaScript. And the creator of JavaScript agrees, and has apologized for it! 

But the language can't change now, or else it would break millions of applications that expect this behaviour. As JavaScript programmers, we have to be aware of this quirk (and many others) and deal with it.

## Exercise


> #### Instruction
> 
> Read the article [sorting a JavaScript array using array.sort()](http://www.javascriptkit.com/javatutors/arraysort.shtml).

Now, write JavaScript code to sort the array numerically (the sorted array should equal `[1, 2, 5, 9, 10]`)

### Advanced Sorting

Sometimes we want to sort complex objects based on custom sorting logic.

Say we have a list of students that we would like to sort in alphabetical order. If students have the same name, then we prioritize the older student first.

```javascript
const students = [
  { id: 1, name: "bruce",    age: 40 },
  { id: 2, name: "zoidberg", age: 22 },
  { id: 3, name: "alex",     age: 22 },
  { id: 4, name: "alex",     age: 30 }
];
```

> #### Instruction
> Write a sorting function (sometimes called a _custom comparator_), that sorts the above array first by the `name` ascending alphabetically, and in cases where the names are equal sort by descending `age`.

Read about the [`Array.prototype.sort()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort) function on MDN in order to implement your solution

Did you notice that the `sort()` function modifies the array being sorted, whereas `filter()` and `map()` functions produced new arrays?

> #### Instruction
> Create a gist to submit your code
