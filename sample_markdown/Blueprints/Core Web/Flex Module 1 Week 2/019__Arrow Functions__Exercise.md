---
uuid: f986e749-3143-4e0f-aed7-68cd8d0aa79b
duration: 20
tags: focal
---

ES6 released a new syntax for function declarations that is very convenient to use for declaring anonymous functions (usually in the form of callbacks).

## Arrow Functions

Arrow functions provide a new syntax for declaring anonymous functions, as show below.

```javascript
// BEFORE: anonymous callback as function expression 
[1,2,3].forEach(function (num) {
  console.log('num: ', num);
});

// AFTER: anonymous callback as arrow function
[1,2,3].forEach((num) => {
  console.log('num: ', num);
});
```

In fact, for one liners JS allows us to further remove some characters: 

```javascript
[1,2,3].forEach(num => console.log('num: ', num));
```

> #### Instruction
> Try out the above one-liner in your `node` REPL.

As always, try to have a hypothesis about what we will see before executing the above line of code in node's REPL.

## Caveat Regarding `this`

There's more to arrow functions than just the syntax difference, but that's a complicated subject. For now here's the simple explanation:

> #### Information
> Arrow functions don't get assigned a value for `this` (in the way that traditional function expressions do). It is therefore less common to come across arrow functions which make reference to `this`. 

`this` shouldn't be an issue for us right now (_see what I did there?_). This is because we're not going to need to use `this` in any of our callback implementations for today. However, more can be learned about this nuance which can become important later as we do more object-oriented programming. 

There will be a [stretch reading](/b7b6eb28-3746-4ae8-8591-ca41653e6c62) later on this week for digging deeper into this topic.

## A Video Explanation (by Fun Fun Function!)

<iframe style="width: 100%; height: 500px;" src="https://www.youtube-nocookie.com/embed/6sQDTgOqh-I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> #### Information
> This video is embedded in [Mattias's Medium post](https://medium.com/humans-create-software/arrow-functions-in-javascript-what-why-and-how-fun-fun-function-32-d08e9cd33c) which contains some more details and other resources.

## Conclusion

In summary, arrow functions are a cleaner, shorter syntax for declaring anonymous functions. They can be used for more and have some interesting behavioral differences with regards to `this` but we will ignore these things for now in order to stay focused.

