---
uuid: 5b4da247-6c43-48fc-b04c-2885791b0654
duration: 20
tags: focal
outcomes:
  - 4c29359f-699f-4ba0-a8e0-0715966f8a53
  - 5f78ff0a-8b11-44b3-ba62-d389114a678a
  - 00b10dea-7878-46cb-a98c-235362161c6b
  - b96615cb-cc68-4757-a0e4-1aeee04ace3e
  # truthy/falsey
  - 04535b03-7eab-4ceb-9599-6ca275150693
  - b2fdb583-67de-4565-aaf7-ab10a397809b
---


In this activity we're going to review type coercion, **'truthy'** and **'falsey'** values, and how we go about comparing all of these things using JavaScript.

While these have been covered a bit before, they are important concepts that are deserving of a review.

### Double Equals, Triple Equals, and Type Coercion

There are two ways to compare values in JavaScript. We can use either the `===` operator, or the `==` operator. Up to this point, we've been exclusively using the `===` to compare two values, and with good reason. The `===` does not only compare two values, but also the **type** of those values. Consider this example:

```javascript
23 === "23"
```

Even though both of the above values are 23, one is a String and the other is a Number. Before comparing the actual values, `===` will compare the types, see that they are not the same, and immediately return False without going any further.

Our other comparative operator is `==`, and it does things a little differently. Let's use the same example from before, but this time we will use the double equals:

```javascript
23 == "23"
```

In this case, `==` returns True. Before performing any sort of comparison, the `==` operator will attempt to force the two values to be of the same type, if possible. This is called type coercion, and it can really mess up your expected results if you're not careful. While we won't go into too much detail right now on exactly how this type coercion is happening, it's important to know that `==` exists, and how it behaves. But be aware that it's better to use triple equals `===` in almost every case, and that's why we've been using it in all of our examples so far. Type coercion can sometimes produce unexpected results in your code, as you'll see below in the next section.

### What About 'Not Equal'?

We can also use `!=` in the same way that we would use `!==` to check that two values are not equal. In this way, `!=` will force type coercion the same as `==` does, before comparing the two values. However, just as we learned in the previous section, unless our specific use case requires it, it is almost always better to use `!==` in order to avoid any accidental type coercion in our code.

### Truthy and Falsey

Comparing two values in JavaScript will return either `true` or `false`. But there are some situations in JavaScript, especially when using `==`, that the correct response will be the opposite of what you might expect.

Consider the following example:

```javascript
0 == false
```

> #### Note
> If you'd like to explore this a little further, take a look at this post on Stack Overflow which discusses an excerpt from Douglas Crockford's book **JavaScript: The Good Parts**. It goes into some further detail on comparison operators and some of the strangeness surrounding them.
> - [Stack Overflow: Does it Matter Which Equals Operator I Use in Javascript](http://stackoverflow.com/questions/359494/does-it-matter-which-equals-operator-vs-i-use-in-javascript-comparisons/359509#359509)

We know that a double equal `==` will try to force a type coercion, and therefore will... what? Try to convert a Boolean into a Number? But they're still not the same values, right? It may seem counter-intuitive, but in JavaScript, everything has an inherent Boolean value, which is commonly referred to as a `Truthy` or `Falsey` value. In this case, even though `0` is a Number, it also holds a Falsey value.

In the future, we're going to encounter several weird cases of truthy and falsey values, but for now we just have to remember that most things in JavaScript are considered Truthy, except for the following:

```javascript
// All of the following are inherently falsey:

False
// False is False. Makes sense, right?

0
// 0 is the only falsey Number

""
// an empty string is falsey

null
// a null, or empty value, is falsey.

undefined
// an object that has not been defined is considered falsey.

NaN
// Not a Number. You'll learn more about NaN as we go on.
```

### So... How Do I Use It?

Truthy values are a fast and easy way to check conditions in our code. For example, maybe we want to save the users name to a String, but only if we don't already have something saved to `username`.

```javascript
username = '';

if (!username) {
  username = 'Siobhan';
}
```

Since we haven't yet saved anything to `username`, it's an empty String, and therefore returns falsey, which we account for with the bang `!username`, allowing the rest of our code to run.

The same concept can be applied to Arrays. Invoking the `Array.length` property will return 0 for an empty Array, which is also a falsey value.

```javascript
shoppingList = [];

if (!shoppingList.length) {
  shoppingList.push('coconut milk');
}
```

This is a simple way to check if our Shopping List is empty, and if it is we can add some delicious coconut milk to it!

## Conclusion

We learned about type coercion, **'truthy'** and **'falsey'** values, and how we go about comparing using double equals (==) and triple equals (===). We saw that JavaScript will perform a type conversion with the double equals(==) and we might get an unexpected result. That's why most of the time we should use the triple equals (===) because it makes the comparison more predictable.
