---
uuid: 323a75b0-13c9-4ae6-9385-7658d42ffc79
duration: 60
allow_submissions: true
name: 'Functions As Objects'
tags: focal
outcomes:
  - 1503375d-8b08-472f-90f2-5f23c917dfb2
  - 4bbba5ea-f3f2-44d4-98f2-0b4fdd27a054
  - 8d2d3fc7-b435-4ee7-8e12-b577d4da0745
  - 44297d4e-44a3-4df4-a8ad-2ea7169892ec
  - 86e1a141-d970-452a-8486-2919b586d640
  - b943190a-c82b-4c43-b7a5-96588837ac66
  - b63fd868-0b66-4481-bfa4-447cc60eb39a
# forEach
  - a8582b46-f168-4eb8-8227-571cab249e5f
---

This activity looks at how functions in JavaScript are actually _objects_. They can be referenced and passed as arguments when invoking other functions. This is a flexible feature of JavaScript, and it can be counterintuitive at first.

## JavaScript Functions as Objects

> #### Information
> One of the distinctive things about JavaScript is that functions are [first-class objects](https://en.wikipedia.org/wiki/First-class_citizen). 

This means two important things:

1. Functions can be stored in variables and passed around
2. Functions can do everything that other objects can do (like having properties assigned to them)

Check this out:

```javascript
const myFn = function() {
  console.log("I am function.");
}

myFn.someAttribute = 42;
console.log(myFn.someAttribute);

function runner(f) {
  f();
}

runner(myFn);
```

_So what is going on, and why is it special?_

* We assign a function to our variable `myFn`
* An attribute `someAttribute` is assigned to that function object
* A `runner` function is defined that runs the argument `f` that we pass it
* We pass a reference to our `myFn`, which gets invoked by the `runner` function

As we continue with the course, we will be using this ability of JavaScript (and many other languages) to achieve many different goals.


## Callback Functions

The most notable usage of having _functions as values_ in JavaScript is a **callback function**.

A callback function:

* Is a function passed (by reference) into another function (let's call that one the "_receiver_" function)
* The _receiver_ function is therefore accepting behavior to perform by calling the _callback_ function that it now has access to
* The _receiver_ function can decide to call the _callback_ function at any time, as many times as it wants

Let's look at an example:

```javascript
// The second argument/parameter is expected to be a (callback) function
const findWaldo = function(names, found) {
  for (let i = 0; i < names.length; i++) {
    let name = names[i];
    if (name === "Waldo") {
      found();   // execute callback
    }
  }
}

const actionWhenFound = function() {
  console.log("Found him!");
}

findWaldo(["Alice", "Bob", "Waldo", "Winston"], actionWhenFound);
```

This code illustrates how a function can be treated as an ordinary value and passed around to another function. We pass a reference to the function named `actionWhenFound` as an _argument_ to another function `findWaldo`.

The function `actionWhenFound` is known as a _callback_ function. It is first defined, then passed as an argument to another function, and finally executed once a specific event occurs.

## Setup

> #### Instruction
> Inside `functions`, create a folder called `callbacks-intro` with a single file `findWaldo.js`.

```terminal
cd /vagrant/functions
```

```terminal
mkdir callbacks-intro && cd callbacks-intro
```

```terminal
touch findWaldo.js
```

> #### Instruction
> Open up the entire `functions` folder in VSCode.


## Exercise 1 - Callback Arguments

Did you know that we can pass results via callback functions?

> #### Instruction
> Modify the _callback function_ in the previous example so that it accepts a single argument `index` and logs it. The problem should therefore output something like _"Found Waldo at index 2!"_.

- Copy the waldo searching code above into the JS file
- Run it via terminal to make sure that it is working as expected
- Modify the `actionWhenFound` function to let it receive and use the index
- Modify the `findWaldo` function so that it passes the index array to the callback


## Exercise 2 - Array `forEach`

A very common implementation of callback functions is with `forEach` which uses callbacks to allow us to easily iterate through the elements of an array.

Read about iterating through elements of an array using JavaScript's [`Array.prototype.forEach()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach) method.

> #### Instruction
> Refactor the function `findWaldo` to use the `forEach()` method instead of a `for` loop.

## Conclusion

Up until now, we knew we could pass _data_ into functions. We just learned that in languages like JS it is possible to actually also pass _behavior_ into functions. 

We realize this after learning that functions are values and can be treated as such. We learned that in JS, functions are in fact actually objects. That said, our focus is not on assigning properties (keys) to functions, and instead on passing them as values into other functions. This allows us to pass behavior into other functions. 

Functions that are passed in like this are referred to as **callbacks** or **callback functions**.

This seemingly odd use of functions opens up interesting possibilities when thinking about what types of functions we can create. We looked at `forEach` as a very common use-case for callbacks.

It may be hard to relate to callbacks at this point. Hang in there as we dive in deeper!

## Complete Assignment

> #### Instruction
> Create a gist to use for submission.

Once you have finished the exercises, create a secret gist to submit your solution.
