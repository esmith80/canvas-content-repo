---
uuid: b956297d-c512-43fb-887e-f2c4eb0f8aa6
name: 'Introduction to var, let, and const'
type: 'Assignment'
duration: 90
---

JavaScript often has many ways of accomplishing a task. For example, we can create a variable using `let`, `var`, or `const`. In this exercise, we will get an introduction to the difference between using `let`, `var`, and `const` to create variables; and when each one is appropriate to use.

## var

JavaScript has evolved over the years, and as it evolves, new features get added. Because of this, there are often multiple ways to accomplish things; some ways are older, some are newer, some are better, and some are worse.

When JavaScript was first created, the only way to create a variable was by using `var`. `var` mostly works well, but has some drawbacks that we will learn about later on in the course.

As JavaScript developers, we will see `var` used all over the place; like in code, documentation, blogs, and courses (like the one at Udacity). Using `var` is a **valid** way of creating variables, but it is the _old_ way of creating variables and there are now better ways of doing this.

## EcmaScript 2015 ES6

The release of ES6 in 2015, gave JavaScript many new features to improve the language. Included in these updates, was the addition of `let` and `const` to create variables. These both work in a similar way to `var`, but have some slightly different properties. `let` is very similar to `var`, we can use it to create a variable, then update that variable later on.

Either `let` or `var` could be used in the following example:

```javascript
let guess = 10;
guess = 3;
guess = 7;
```

We can create a variable, assign a value to it, then change that value later on. If we use `const`, we cannot reassign a value later on. So we could not use const in the previous example, as we would get an error.

```javascript
const guess = 10;
guess = 3; // TypeError: Assignment to constant variable.
```

We can only use `const` to create a variable that will never change.

```javascript
const pi = 3.14;
```

## When to use `let`, `var`, or `const`

So when should we use `let`, `var`, or `const`? 

If we are creating a variable that will need to be reassigned later on, like `guess`, then use `let`; otherwise, use `const`. If we're not sure whether something will be reassigned or not, then we should use `const`. We can always change it to `let` later on if we must. 

```js
let greeting = "Hello ";
const name = "Justine";
greeting += name;
```

_What about `var`, then?_

> #### Information
> We no longer have a use for `var`. We will see it in older code and documentation, but if we are writing new code, we should not be using `var`.

## Conclusion

In this reading we learned about when we should use `let`, `var`, or  `const` to create variables. All modern JavaScript should use either `let` or `const`.
