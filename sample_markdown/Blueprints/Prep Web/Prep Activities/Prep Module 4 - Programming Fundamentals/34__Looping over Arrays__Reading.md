---
uuid: 4eaf8909-f1bf-4390-882c-91da9fde4430
duration: 30
---

Loops are used most often to iterate over a collection of data, such as arrays. While there are many ways to loop over arrays in JS, this reading will introduce you to `for..of` loops since it is the primary and preferred way to accomplish this.

> #### Warning
> Follow along by typing out and running these examples in your local environment so that you get some practice with this. Very soon you'll need to employ these loops (in the upcoming challenges).

## Traditional `for` Loops Can Work

Say we have a list of all items in a shopping cart and we need to total that list in order to determine the order total. 

```js
const amounts = [61.00, 52.25, 112.99, 5.00]; 
```

We _could_ use a traditional `for` loop which we have been introduced to already:

```js
const total = 0;
for (let i = 0; i < amounts.length; i++) {
  total += amounts[i];
}
console.log('Order total is: ', total);
```

## Newer `for..of` Loops Are Simpler

However, since looping from beginning to end of an array is a _very_ common occurrence in programming, JavaScript has a newer, more purpose-built version of the `for` loop for this type of problem:

```js
const total = 0;
for (let amount of amounts) {
  total += amount;
}
console.log('Order total is: ', total);
```

Here the `amount` variable is automatically set to each item in the array (first `61.00`, then `52.25` and so on).

> #### Question
> Why, in your opinion, is this `for..of` loop the preferred way to loop over an entire array from start to end?

????why-for-of
Because with the `for..of` syntax, we don't have to start and manage an array index `i` and then use that index to access each item in the array (`amounts[i]`). We don't care about the index, we really just want to go through each item in the array.
????

> #### Warning
> Skip `forEach` for now.

In your own research online, you may come across another way in JS to loop over arrays that is now less preferred: `forEach`. This syntax has its place, but we suggest ignoring it for now, since `for..of` is newer and can accomplish the same task.

> #### Instruction
> Watch the following introductory video on `for..of` loops in JavaScript. 

<iframe style="width: 100%; height: 500px;" src="https://www.youtube-nocookie.com/embed/FxdOTJLMWZg?rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> #### Question
> When might the `for..of` loop _not_ be the appropriate choice?

????why-not-for-of
The `for..of` loop is only really useful for going from beginning to end of an array.If instead we need to loop through an array in a different order (e.g. backwards, or skipping every other element), then we'll need to use a traditional `for` loop instead.
????

## Conclusion

In summary, the `for..of` loop is ...

- A modern (newer) feature in JavaScript
- Simpler than the regular `for` loop
- But also less powerful than the regular `for` loop
- Only really useful for going through an entire array from beginning to end
- _Not_ a solution to all our looping problems
