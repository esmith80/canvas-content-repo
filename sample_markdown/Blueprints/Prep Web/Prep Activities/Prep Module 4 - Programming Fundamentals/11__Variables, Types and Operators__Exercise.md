---
uuid: 42290567-ca46-4cb8-886f-095ec140b9b0
name: 'Variables, Types & Operators'
type: 'Assignment'
duration: 90
outcomes:
# node repl
  - f70950eb-3b39-46e7-9830-ae5b2d122ef1
  - 2952d18b-bfd6-4d68-a447-b8ec47154668
# eljs - values
  - 353a8c2c-ee77-42f8-8def-cb6be3491bfd
  - 6d04fb30-9184-44f4-a4d1-51998d1bdb5d
  - 43f47488-eedd-4cfd-97cc-0285b968869c
  - a9016d75-c2ce-4cef-8c2f-3017318425b1
  - c665cbb9-b722-4a95-b3d3-90e8935250a2
# eljs - strings
  - df38dce5-d442-4ecb-af39-75536907ad00
  - 7a7bd882-b60d-478d-8a14-fada664c3c38
  - a47c2d15-1a32-4f97-9574-dd37e1c5781b
  - 5f66ee62-ea91-4697-917e-4abb014554d9
# eljs - booleans
  - 47943ada-3424-4293-b33b-373f9cbef948
  - 6f17eb93-8047-4a24-b417-eda8b8de35f3
  - 96daf2a9-9a12-469d-826e-3ac4e3c3c1ea
  - bcf79bff-23fa-4575-805e-ae204ac5832b
  - 01052bcb-78d2-46ab-8aa9-6dd6497066f4
  - b9d33544-cf2f-4b9a-bd34-91a3f94658e0
  - 0b0999a8-a16a-48c4-bb50-c9433ab95bc5
# eljs - undefined
  - 932dc0ab-79a8-46d1-9acf-83fd362e8044
# eljs - type coercion
  - 4c29359f-699f-4ba0-a8e0-0715966f8a53
  - 5f78ff0a-8b11-44b3-ba62-d389114a678a
  - 00b10dea-7878-46cb-a98c-235362161c6b
  - b96615cb-cc68-4757-a0e4-1aeee04ace3e
# eljs - short circuit
  - f8fff83e-f5cd-46d7-a8df-31d132de31dc
# exercises
  - c12d44c2-c848-4a96-b41b-222e46e4c07e
---

In this exercise, we will learn to understand values and types, and practice manipulating them using variables and operators.

We've got an idea of what computer programs are and how they might work, but we realize it's going to take some time to become confident in writing our own. Where do we start?

## Tinkering With Code Examples

It is important to write out every code example in the node REPL so that we can tinker with it.

> #### Instruction
> Open up the node REPL, and get ready to tinker.

* `SSH` into your Vagrant VM, and fire up the node.js REPL.
* Follow along with all the code examples in this exercise by carefully typing them out in the Node REPL.
* Test your own assumptions by changing the code and running it in the REPL.

> #### Note
> We can quit the node prompt/REPL using <kbd>Ctrl + D</kbd>.

## Simple expressions

Let's begin with some simple expressions. 

> #### Instruction
> Type the following into the node prompt, one line at a time, each followed by an <kbd>Enter</kbd>.

```javascript
"Hello, world!";
false;
7 + 6;
```

Node printed out the results of the expressions. The String `"Hello, world!"` and the Boolean `false` were just parroted back to us, but `7 + 6` was evaluated to `13`. We've just seen how JavaScript evaluates expressions into their simplest form!

## Creating Variables

Every time we've typed one of these expressions, their result was calculated and then it immediately disappeared. We need a way to save the results if we'd like to use them in future expressions, and we're going to do that by declaring variables. 

```javascript
let name = "Suzie";
"Hello, " + name;
```

We've now pointed a variable called `name` at the string `"Suzie"`, which we then used in an expression. Instead of having to say `"Hello, Suzie"` we could reference the value in our `name` variable instead, by concatenating the value of `name` onto the string `"Hello, "`. We can use a variable as many times as we want. 

```javascript
"My friend " + name + " is a programmer.";
```

## Updating Variables

Re-using variables is common practice, but so is updating them. Updating a variable is almost the same as declaring it, only we don't need the `let` keyword. Since we've already declared a variable called `name` (`let name = "Suzie";`), we can change the value `name` points to.

```javascript
name = "Sam";
"Hello, " + name;
```

Further, we can also use as many variables in expressions as we need. 

```javascript
let city = "Vancouver";
let yearIncorporated = 1886;
let currentYear = 2015;
let age = currentYear - yearIncorporated;

city + " is " + age + " years old.";
```

## Arithmetic Operators

Try some more expressions in the node REPL.

> #### Instruction
> Type the following into the prompt (one line at a time).

```javascript
let ten = 10;
ten + 3;
ten * 3;
ten / 3;
ten % 3;
```

When working with numbers, the arithmetic operators `+`, `-`, `*` and `/` do what we expect, once we know that in JavaScript multiplication is performed with `*` and division with `/`. The last expression, however, is using an operator we may not have seen before: `%`. This is called the modulo operator—what does it do? 

> #### Instruction
> Google "modulo operator" to find out before you continue.

## Comparison Operators

Now let's try a few more expressions.

```javascript
15 > 12;
6 <= 2;
7 === 7;
"five" !== "five";
"five" > "three";
```

These expressions are using comparison operators and all evaluate to a Boolean (`true` or `false`). The comparison operators are:

* `<` less than
* `<=` less than or equal to
* `>` greater than
* `>=` greater than or equal to
* `===` strict equals—that is, the two values being compared have to be of the same type and have the same value for the expression to evaluate to `true`
* `!==` strict inequality—that is, the expression evaluates to `true` when the two values being compared are not of the same type and do not have the same value.

Comparing numbers to numbers works as we'd expect. Comparing strings to each other can be a bit weird—it's not exactly clear even in common sense whether the string `"five"` is greater than the string `"three"`. We've figured out it isn't by trying it out in the REPL (`"five" > "three"`), but the hard rules for how JavaScript actually compares strings is complicated. For now, remember that if we don't know what an expression will evaluate to, we can always check it in the node REPL!

> #### Information
> If you're interested in how these string comparisons are done, the wikipedia page on [lexicographical ordering](https://en.wikipedia.org/wiki/Lexicographical_order) is a good reference.

## Mixing Numbers and Strings

Now let's try some non-intuitive expressions.

```javascript
9 + "3";
9 + "three";
4 * "5";
4 + "5";
"four" / 5;
```

What's going on here? JavaScript lets us write expressions that apply various operators on non-matching types, for example trying to add a number to a string. In all these cases, JavaScript converts one type into another before evaluating the expression. For example, `9 + "3"` will be evaluated as a string concatenation after `9` is converted to `"9"`, resulting in the string `"93"`. This type of automatic conversion is called **type coercion**, and the rules JavaScript follows when coercing types are not easy to remember.

What we should remember, though, is that JavaScript will **coerce** some of our values when we're applying operators to values of different types, and that we should be very careful with what types of values we're working with.

Most often we'll encounter this problem when we're trying to calculate a numeric value but we're not working only with numbers. In these cases, we can convert strings to numbers ourself.

```javascript
Number("9") + 3;
```

This turns the string `"9"` into the number `9` before adding it to `3`, ensuring it won't concatenate them as strings instead.

## Not a Number (`NaN`)

Finally, what was up with the result of `"four" / 5`? The special JavaScript value `NaN` stands for "Not a Number", and it's most often encountered when a mathematical expression fails, or when converting a value into a number fails. For example:

```javascript
"Hello, world" * 5;
Number("Hello, world");
```

Both these expressions evaluate to `NaN`. The first because JavaScript cannot multiply `"Hello, world"` by `5`, the second because it cannot convert `"Hello, world"` into a number.

## Conclusion

In this exercise we learned about how to create variables for different types of data in JavaScript. We took a look at how to perform operations on numbers, and how we can mix different types, like numbers and strings. 

