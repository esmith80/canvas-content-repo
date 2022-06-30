---
uuid: f517804a-1253-4a7a-89e8-38a8d112a1d8
duration: 30
tags: focal
outcomes:
  - 180da493-5314-4af3-ab57-19dc85fa4f48
  - d5b7fc07-4272-4860-98e9-b23993291dd4
  - 1c9f4cc9-ac36-4ca4-bd96-94e00d82844d
---

Functions. We've seen them before. They're great ways to encapsulate some code to avoid tedious repetition and to make our code more readable. But they come with some unique quirks that can make the lives of new JavaScript developers miserable. 

In this activity you're going to review declaring your own functions in preparation for exploring their trickier aspects.

## Growing Functions - Eloquent JavaScript

> #### Instruction
> Read the [Growing Functions](http://eloquentjavascript.net/03_functions.html#h_eVDWIAuyBK) section in Eloquent JavaScript (Chapter 3).

## Functions & Side Effects - Eloquent JavaScript

There are two major types of functions. The section right after _Growing Functions_ explains this well.

> #### Instruction
> Read the [Functions And Side Effects](http://eloquentjavascript.net/03_functions.html#h_EdyBGBF6y/) section in Eloquent JavaScript (Chapter 3).

## Name Functions Properly

Give your functions good names. A good name is short and explains exactly what the function does as unambiguously as possible. For example, `join` and `obfuscate` are better function names than `iLikeFunctions` or `turnMySimpleStringIntoAnObfuscatedPassword`.

### Conventions for Naming Functions

Although this topic is fairly subjective, and often contentious among opinionated developers, function (and variable) naming is an important art. Since it directly affects the _readability_ of your code, you should get into

* avoid generic names like 'data', or 'run'
* name your functions beginning with _action_ words like `createUser`, or `sendUserData`
* be consistent with your naming conventions
* if you're joining an existing project, observe and adapt any existing conventions

These are not hard rules that you can apply universally. Your personal style will evolve with experience.

### A JavaScript Specific Naming Convention

A common JavaScript convention is to camelCase names, including those of functions. For example, if you had a function that said hello to a user, a conventional name for it would be `sayHello`.  Naming your function `sayhello` or `say_hello` would still work, but it would stand out to an experienced JavaScript developer as unconventional. Each language tends to have it's own stylistic conventions, and this is just one example.

## Proper Indentation Is Key

Indent the contents of your function. It's conventional to use 2 soft spaces but no tabs (this should already be configured in your VSCode). For example, consider the following poorly-indented code:

```javascript
function power(num, exp) {
var result = 1;
for (var i = 1; i < exp; i++) {
result *= num;
}
return result;
}
```

The following is functionally identical but because of the indentation, it is much easier to read. It's easier to follow where the curly braces start and end a block, and which code belongs to it.

```javascript
function power(num, exp) {
  var result = 1;
  for (var i = 1; i < exp; i++) {
    result *= num;
  }
  return result;
}
```

## Conclusion

This reading emphasized the importance of the following best practices when creating functions:

1. Give your functions precise verb/action based names
2. Use `camelCasedNames` (like this one)
3. Properly indent the function code
4. Functions should focus on a single task: returning a value or causing a side effect. _Break your function into additional smaller functions if you find it doing two or more things_
  * One single task could be to compute and return a value (eg: `zeroPad`)
  * Another single task could be to perform a side effect such as logging a message to the screen (eg: `printFarmInventory`)

Keep these rules in mind as you work through the upcoming challenges.
