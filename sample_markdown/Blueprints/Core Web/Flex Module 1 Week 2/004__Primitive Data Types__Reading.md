---
uuid: ab07e19a-79dd-496a-9fb9-cf82209170b4
duration: 15
tags: focal
outcomes:
  - 353a8c2c-ee77-42f8-8def-cb6be3491bfd
  - 180e2598-5a7a-49c3-954c-4e532d5ea037
  - e3805944-305a-447a-857d-25f5e498c8d7
---

This activity should introduce you to the primitive data types in JavaScript, and get you familiar with what data types you will encounter.

Before talking about objects, let's start with reviewing the six primitive data types available in JavaScript.

> #### Warning
> The topic of primitive data types can get complicated due to the quirks of JavaScript. We will not dwell on the quirky details of JS, since those details can become distractions to our current goal of becoming proficient with the fundamentals of programming. 

The important thing to know is there are six primitive types in JavaScript. The other details are specific to the JavaScript language rather than general principles of software development, and are thus less important at the moment.  

There is a stretch reading later on which dives deeper into the JS-specific aspects of this topic.

## The Six Primitive Types in JavaScript

So far, we've worked with many different types of values in JavaScript. We've worked with Numbers and Strings and Booleans, we've seen Undefined, and maybe we've seen Null. 
  
> #### Information
> In JavaScript, all **values which are not Objects** are collectively referred to as **primitives**.  
  
Let's review the six types of primitives:  
-`undefined`  
-`null`  
-`boolean`  
-`string`  
-`number`  
-`symbol` _(Introduced in ES6 and not something we need to focus on right now)_

Primitives are essential building blocks of data because they represent the simplest possible type of data that our software can have. 

## Objects Are Not Primitives

Anything not in that list (for example, a `Date`) is an Object. Objects are not primitive data types. 

We've already been introduced to objects, arrays, *and* of course functions, the latter two of which are technically a sub-category of objects. Objects (including arrays and functions and other types of objects) have *properties*.

> #### Information
> Wait, functions are also objects in JavaScript?! Yes, as odd as this may seem, it's true. That said, let's not worry about this detail for now because it is a more advanced concept and not needed for our goals this week.

The six primitive types, plus `object`, make up the seven fundamental types of JavaScript.

## Conclusion

This reading quickly introduces you to the concept of primitive data types and their separation from objects. Objects are used to define more complex data types (such as arrays, dates, key-value pairs, and so on).

A [stretch reading later on](/ea6df177-5ab1-4987-87f0-fa7753ffe65e) provides more detail into this topic, but you can leave it to later.
