---
uuid: ac3bb62f-4a08-4624-953d-e33796d5d321
duration: 10
tags: node
outcomes:
  - 08028b8b-a145-4b67-a8e3-80b7c678a3b7
  - ee55d85b-3b1c-45e9-87ee-7376fa35bc46
  - cc24ebec-2f33-4e1a-8f06-7caeb3660b8d
  - a678974e-3589-49ab-8b67-c1c3cd84c2d1
  - eb55bb82-6758-449a-927e-8ae763d0ff13
---

We just implemented a solution where strings had to be concatenated in order to display a message (based on our `assertEqual` outcome). 

This is a good place to introduce a neat feature of ES6 called **template literals**, also known as **template strings**.

## Fancier Strings

Consider the following example which uses string concatenation to greet Alice.

```javascript
const name = 'Alice';
console.log('Hello, ' + name + '!'); // logs: Hello, Alice!
```

This works – it **concatenates** (adds) the strings `'Hello, '`, `'Alice'` and `'!'` together. However, this can become cumbersome, especially when working with more and/or longer strings.

Template literals (aka template strings) allow us to simplify this process while simultaneously being faster and using up less computer memory! 

The next example greets Alice using the template literals syntax.

```javascript
const name = 'Alice';
console.log(`Hello, ${name}!`); // logs: Hello, Alice!
```

The main difference here are that the string assigned to the variable `name` (that is, `'Alice'`) is **interpolated** (injected) directly into the final string. 

Since template strings are a special type of string, instead of using single or double quotes to declare them, we need to use back-ticks (\`).

You may be asking: _is that it?_ In essence yes, it is. 

## Tinker

> #### Instruction
> Use the Node REPL and experiment with string literals.

The goal here is to play with them a bit and get acquainted with the syntax shown above.

## Optional Reading

If you'd like a more in-depth description of template literals, read (or scan) the following MDN article.

> [Template Literals on MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals)

## Conclusion

We introduced Template Literals / Strings, which are commonplace in JavaScript now, thanks to the advancements made in ES6. Try to use them instead of concatenating strings (using `+`) in our upcoming solutions.
