---
uuid: 90bcdb2e-2e57-47f4-a10f-0a5645507bbe
duration: 30
tags: focal
---

Let's play with a popular higher-order function `map` in order to get more comfortable calling higher-order functions with callbacks.

## `Array.prototype.map` in Docs

In a later activity we will build our very own version of this function, so it will help to use it first.

The `map` function already exists in JavaScript. Let's play with the built-in version so that we can get acquainted it.

> #### Instruction
> Review the documentation for [Array.prototype.map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map).

Don't read the full page, just the initial example and or two in order to get acquainted with how it works.

Notice how their example code uses a minimal arrow function for the callback syntax. We are somewhat familiar with arrow functions, but let's quickly review this particular one.

```javascript
x => x * 2
```

is short for

```javascript
(x) => { return (x * 2); }
```

This callback function expects to take in one parameter _x_ and essentially returns _2x_.

It _could_ have been written using the regular syntax:

```javascript
function (x) { return (x * 2); }
```

These are all different ways of creating the _same_ anonymous callback function (_except that arrow functions treat `this` differently. But again, we don't care about that difference for simple callbacks like these where `this` is not being used_).

## Video about `Array.prototype.map`

It's time for some more Fun Fun Function!

> #### Instruction
> Watch Fun Fun Function's video devoted to `map`.

MPJ talks about arrow functions in this video too.

<div></div>

> #### Warning
> At 7:08 in the video, he mentions that the node language needs special flags to enable arrow functions. However, this video is from 2015 and we are indeed watching it from the future (his words). We don't have to worry about that today.

<iframe style="width: 100%; height: 500px;" src="https://www.youtube-nocookie.com/embed/bCqtb-Z5YGQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Quick Setup

> #### Instruction
> In your `functions` directory, create a new folder `map_builtin` and within it a `mapTest.js` file.

## Challenge: Using Map

> #### Instruction
> Use the `map` method on `lighthouses` so that we instead see an array of numbers.

The array of numbers should be the length of each name in the lighthouses.

Start with the code below:

```javascript
const lighthouses = ["Gibraltar Point", "Peggy's Point", "Cove Island", "Discovery Island", "Cape Scott", "Point Clark", "Kincardine"];

// write code here to use map
// It should output: [ 15, 13, 11, 16, 10, 11, 10 ]
```

## Complete Assignment

No need to submit your code for this one.
