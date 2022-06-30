---
uuid: baab9693-3ee0-4f19-a46b-7ddd4e1baf55
duration: 120
---

An introduction to the use of Objects to store data and behavior, the concept of key-value pairs, passing objects into functions, but also functions inside of objects!

## Topics

* Primitive data types
* Objects Fundamentals
  * Their advantages for data lookup vs arrays
  * How they are passed to functions
* Functions as object methods
  * Using `this` when inside an object's function

## Teacher Notes

**Mention to the students that when it comes to live coding, they should not be trying to replicate the same code on their screen and instead be paying attention and collaborating/questioning the code that's being written on screen.**

**This discussion is meant to facilitate a deeper learning of the coding concepts, where as a simple "repeat after me" lecture would not have students discussing the concepts presented in depth.**

#### 1. Objects 101

- Primitive types in JavaScript (string and number are primitives, passed directly by value)
- The difference between a primitive vs an object
- Key-value pairs as a concept.
- Give a mention to the various names given to the data type. Associative array, map, dictionary, hash (without getting into *abstract data types* or anything like that); but focus mostly on Objects.

#### 2. Functions in JS Pass-by-value

Functions can update the object but not replace it.

Go over this example code, taken from here: http://stackoverflow.com/a/13104500/1305625

```javascript
const replace = function(ref) {
    ref = {};           // this code does _not_ affect the object passed
};

const update = function(ref) {
    ref.key = 'newvalue';  // this code _does_ affect the _contents_ of the object
};

const a = { key: 'value' };
replace(a);  // a still has its original value - it's unmodfied
update(a);   // the _contents_ of 'a' are changed
```

Explain what "pointers aka references passed as values" means.

*Strong suggestion:* Use a digital diagram, illustration, or python tutor to illustrate this point.

#### 3. `this` inside Object Methods

Suggestion: when explaining this verbally, alias it to them as "context". (ie: "Context" === `this`).

Explain how it is tied to objects that functions are defined on:

```javascript
const famousPerson = {
  firstName: 'Shahrukh',
  lastName:  'Khan',

  fullName: function() {
    return `${this.firstName} ${this.lastName}`;
  }
}

console.log(famousPerson.fullName());
```


*Out of scope:*

- The `delete` keyword to remove properties on objects
- `.bind` and `.apply` to update context
- Avoid using the word "Execution Context" and stick to "Scope"
- Thorough explanation of memory allocation or the GC
- let and const vs var+IFFE for block level scoping
