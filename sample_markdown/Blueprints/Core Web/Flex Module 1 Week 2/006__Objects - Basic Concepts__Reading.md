---
uuid: 17b170f6-22b9-45fc-8299-788bea1de28e
duration: 30
tags: focal
outcomes:
  - 5c13998e-43bc-4590-ba30-1ca1d6118cb4
  - 3abe17e9-41c9-485a-bcad-39f49ed86a8a
  - eb5c730b-5ef1-4e7a-8428-fa7f32f99f35
  - cc0a652f-acdf-4c4c-9d3b-d4a86542bd9b
---

The purpose of this activity is to demonstrate the basics of working with objects. We will cover defining objects as well as working with object keys and values.

## Objects at a Glance

Objects:

- Contain key-value pairs; each key maps to a value
- Contain keys which are always strings (or symbols, but it's less common and not important right now)
- Have unique keys; the same key cannot appear twice in an object
- Have their keys point to values which can be of any type

## Object Literals

Recap: some values can be represented by *literals*: we have string literals like `"lighthouse"`, number literals like `5` and `7.5`, etc. Arrays also have a literal syntax using square brackets: `[1, 2, 3]` is a 3-element array.

Likewise, objects have a literal syntax using braces `{}`. Here is an empty *object literal* assigned to a variable:

```javascript
const emptyObject = {};
```

And an object literal with a single key-value pair:

```javascript
const tinyObject = { "size": "Tiny" };
```

This object has a single key (the string `"size"`) associated with a value (the string `"Tiny"`).

Note that while our key `size` is enclosed in double quotes like a string, it can still be considered a string without the qoutes around it. So we can save a few characters and make it read nicer by writing this instead: 

```javascript
const tinyObject = { size: "Tiny" };
```

## Objects Are Like 2-Column Tables

We can think of an object as a table with two columns. 

![Example of key-value pairs in a table, where "sci-fi" is in the "keys" column and "The Expanse" is in the "values" column](https://d.pr/i/n8ssKl+)

[//]: # (draw.io illustration can be found here: https://drive.google.com/file/d/1zoBg3y29lU_LQXFIk-uSqMYvF7Cphhd_/view)

Furthermore, objects allow us to easily access the values (in the second column) via a quick reference to their respective keys (in first column).

There's a lot more to say about objects, but this is enough to get going with.

Let's have a closer look at object values.

## Object Values

An object's values can be of any type. The following example shows an object with primitive values:

```javascript
const myObject = {
  a: 6,     // Number
  b: "abc", // String
  c: true,  // Boolean
  d: null,  // Null
};
```

> #### Instruction
> Go into your terminal and start a Node.js REPL/shell session by executing `node`. Type out the above object to define `myObject`.

Tip: If you mistype while in a multi-line input in `node` and need to start over, use <kbd>CTRL</kbd>+<kbd>C</kbd> to cancel before starting again from the first line.

<div></div>

> #### Warning
While it's perfectly valid to use `undefined` as an object value, it's not typically done. As you'll see in a moment, `undefined` has a special meaning when accessing values in an object.

### Accessing Object Values

To retrieve a value within an object, use square-bracket notation.

> #### Instruction
>  Type the following in your node session. What value is returned?

```javascript
const person = { firstName: "Khurram" };
const firstName = person["firstName"]; // get the value associated with the key "firstName"
```

> #### Question
> When using the square brackets syntax to access an object's property, does the key (`"firstName"` above) _need_ to be a string? In other words, what would happen if instead we tried to access firstName by typing:
>
> ```javascript
> const firstNameAgain = person[firstName];
> ```
> 
> Tip: If you're not sure, give it a try in your friendly neighbourhood node REPL.

????object-property-access
When accessing an object property using the square brackets (`[]`) syntax, the key _must_ be quoted (as a string). Otherwise it would be considered a variable name instead of a string literal. 

```javascript
const person = { firstName: "Khurram" };
person[firstName]; 
// ReferenceError: firstName is not defined
```

If that variable name instead points to a string, then that can be an interesting way of accessing a key:

```javascript
const person = { firstName: "Khurram" };
const propertyName = "firstName";
const firstName = person[propertyName]; // interpreted as person["firstName"], and therefore works fine :)
```
???? 

> #### Information
> An alternative way to access the same value would be `person.firstName`. 

We'll expand on this later, but for now let's stick with the convention of always using square brackets when referring to object properties. While this notation is not the convention, it will hopefully continue to remind us that the object keys are strings.

## Accessing a Key That Doesn't Exist

> #### Instruction
> Type the following code in your node session.

```javascript
// assuming you have person already defined...
person["foo"];
```

Notice that we get back `undefined`! The key `"foo"` doesn't exist in `myObject`, so it returns `undefined` to tell us that, well, the key is not defined.

This is why it might not be a great idea to use `undefined` as an object value manually.

## Assigning a New Value to a Key

> #### Information
> Square-bracket notation can also be used to assign new values to new or existing keys.

Let's see this in action.

> #### Instruction
> Run the following code in your node session to see how this object looks after assigning to keys.

```javascript
const mary = { name: "Mary Sue" };
mary["name"] = "Mary Jane";
mary["age"]  = 22;
mary // shows the resulting object with both properties
```

## Objects as Values

We don't need to limit ourselves to primitive values here. In addition to primitives (like in the above example), we can nest objects within objects. Put another way, the key-value pair in an object can have a value that is another object. Let's take a look at an example:

```javascript
const person = {
  name: "Paul",
  address: {
    street: "310 W 95th",
    city: "New York",
    zipCode: 10027
  }
};
```

This demonstrates that the value associated with the `address` key can be another object.

> #### Instruction
>  Inspect the data type of `address` by executing `typeof person["address"]` in your Node session.

As we can see, objects can _nest_ inside objects. Note that square bracket notation can be used to access nested values:

```javascript
person["address"]["city"]; // => "New York"
```

## Arrays as Values

> #### Instruction
> Modify the existing `person` object to include a new attribute (key) called `phoneNumbers`, and assign it an array of strings.

```javascript
person["phoneNumbers"] = /* <insert array of phone numbers here> */;
```

> #### Instruction
> Inspect the data type of `phoneNumbers`.

```javascript
typeof person["phoneNumbers"];
```

> #### Question
> Is this what you expected?

> Inspect the data type of `phoneNumbers` using the JavaScript operator `instanceof`

```javascript
person["phoneNumbers"] instanceof Object
person["phoneNumbers"] instanceof Array
person["phoneNumbers"] instanceof String
```

> #### Question
> What do these results indicate?

### Object Keys

Let's revisit the rules regarding how object keys work in JavaScript:

1. Keys are always strings
2. Each key is unique (can only occur once in the object)
3. Each key is associated with exactly one value. _(Note that technically, an array or another object would count as "one value" here, even though they contain other values.)_

When writing out object literals, like `{ myKey: "some value" }`, the key is always interpreted as a literal string, even if it's unquoted. It's only necessary to use quotes around the key if the key contains spaces, hyphens or periods. For instance: `{ "my-hyphenated-key": "some value" }`.

By convention, we omit the quotes around keys in string literals whenever we can. If the key is a valid variable name, then we don't have to include quotes

The following example shows two ways of specifying the same *value* in an object literal: using a literal string for the value, or using a variable.

```javascript
const spam = "spam";
person["dislikes"] = { food: spam, "e-mail": "spam" };
```

> #### Warning
> If the preceding example confuses you with regards to which is a string vs variable, ask a mentor for help! It's best to clear this up now.

## Object.keys

To inspect an object's keys, there is a method [`Object.keys(...)`](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Object/keys) that returns an array of keys.

> #### Instruction
> With `person` already defined, try executing `Object.keys(person)` in your Node session.

## Conclusion

We explored the essentials of how to define, access, and manipulate objects in JavaScript. We reviewed the most common way to create objects (`const o = {}`), accessing and setting properties on objects using string keys (`o["key"]`) as well as how to get a list of all the keys in an object (`Object.keys(o)`). 

Objects are highly flexible data structures and the foundation of almost everything in JavaScript.
