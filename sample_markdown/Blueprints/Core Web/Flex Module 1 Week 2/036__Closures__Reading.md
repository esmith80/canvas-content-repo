---
uuid: ae76f364-ed1e-47f8-974b-c3265e90ea34
duration: 60
stretch: true
tags: focal-adv
outcomes:
  - f45933eb-126d-4582-8fcb-1e1e2c719fcc
  - 8a5f1dbe-f745-427a-9fed-a19b12d6920d
  - 9cf24233-168a-49ad-80d6-9a5112446774
  - 876e785e-391e-481e-9006-06fdd33a6261
  - 23eba21f-1118-481e-91aa-7bb9713d9298
  - 2605b6dc-392d-4d53-a2be-0df27359f79e
---

The goal of this activity is to introduce you to the concept of closures.

## Reading

In JavaScript you can define functions inside of functions (inside of functions, and so on), which is referred to as _nesting_. This leads to an important feature called _closures_.

Recall that a function in JavaScript has access to:

1. variables in its own context (that is, variables defined within the function itself),
2. variables in the contexts of all parent functions (that is, variables defined in the functions wrapping the function in question), and
3. global variables.

But what happens if we create a function which references a variable from a parent function?

### Closures – an example

Consider the following example.

```javascript
const outer = function() {
  const x = 10;

  const inner = function() {
    console.log("The value of x is: " + x);
  }
  return inner;
};

const foo = outer();
foo();
```

What will `foo()` print? Will `x` be `10`, `undefined` or something else? What would make sense to you?

Try it in the REPL. You'll discover that it prints `The value of x is: 10`. Why? Because the above code is executed in the following manner.

1. Function `outer` is invoked: `outer()`.
2. `outer` assigns the value 10 to the variable `x`.
4. `outer` defines a function and assigns it to the variable `inner`.
3. `outer` returns the value of `inner` – the just-defined function.
4. `inner` function is assigned to the variable `foo`.
5. Function `foo` is invoked, logging `The value of x is: 10` to the console.

The key attribute of closures is demonstrated here: the `inner` function accesses variable `x`, which is defined within the parent function `outer`.

### Closures definition

JavaScript will retain the context of parent functions, meaning that it will retain references to any variables in parent functions (this is referred to as _Lexical Scoping_ <sup>[1](http://stackoverflow.com/questions/1047454/what-is-lexical-scope)</sup>).

When a function retains the context of a parent function, we call that a "closure".

> #### Information
> For more on closures, check out [Eloquent JavaScript](http://eloquentjavascript.net/03_functions.html#h_hOd+yVxaku) (just the **Closure** section).
>
> For something more in-depth and with more examples, try [MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Closures). 

### Immediately-invoked function expression

You can alternatively use an immediately-invoked function expression (IIFE) to achieve a similar result.

```javascript

const foo = (function() {
  const x = 10;

  const inner = function() {
    console.log("Value of x is: " + x);
  }
  return inner;
})(); // Notice the () at the end,
	  // which will immediately invoke the function,
	  // assigning the returned value (inner) to foo

foo();
```

> #### Question
> What are the limitations of this approach? Could you create multiple instances of the closure using this approach?
