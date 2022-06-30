---
uuid: f67d87c9-23b2-4ec0-9935-7a4a03adc225
duration: 15
allow_submissions: true
tags: focal
---

Functions do not need to be named, or even assigned to a variable. These are known as _anonymous functions_, which we will also cover in this activity.

## Anonymous Functions

The code example in the previous [Functions As Objects](/323a75b0-13c9-4ae6-9385-7658d42ffc79) exercise illustrated a (slightly oversimplified) case where a result is passed from one function (`findWaldo`) to a callback function.

Often a callback function would not be declared or assigned to a variable, but rather would be inline like this:

```javascript
findWaldo(["Alice", "Bob", "Waldo", "Winston"], function(index) {
  console.log("Waldo is located at:", index);
});
```

We can notice here that the callback function defined "inline" here (`function(result) { ... }`) is not named, nor assigned to a variable. It exists only as an **anonymous function**, which is invoked by the function it gets passed into – in this example `findWaldo`.

> #### Information
> Anonymous functions are often declared while being passed in as callbacks to other functions. Why? Because the receiving function that takes in the anonymous function will give that parameter a name anyway.

Again, this may seem like a trivial nuance right now, but anonymous callback functions will be the topic of many lessons in the future. Most people find it confusing at first, so don't feel discouraged.

## Exercise - Refactor `findWaldo`

> #### Instruction
> In that same folder with `findWaldo.js`, create a copy of this file called `findWaldoAnonymously.js`.

It should contain the same code which will serve as our starting point.

```terminal
cd /vagrant/focal/functions/callbacks-intro
```

<div></div>

> #### Instruction
> Refactor the code by making the callback anonymous.

We should find our resulting code making no more reference to a named `actionWhenFound` function. It should instead _declare and pass_ that behavior _anonymously_ into `findWaldo`, all in one go!

> #### Warning
> Albeit shorter and more concise, newcomers sometimes find this style of code less intuitive and more confusing to read. With time, we become more accustomed to reading and writing inline anonymous functions.

<div></div>

> #### Instruction
> Manually test the output to make sure our change still works!

## Complete Assignment

> #### Instruction
> Update your previously created waldo gist or create a new secret gist to submit in Compass.
