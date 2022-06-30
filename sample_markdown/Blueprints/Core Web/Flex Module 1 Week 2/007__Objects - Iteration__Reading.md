---
uuid: 2949c57f-aa42-40f9-865c-c0c39776c5c8
duration: 20
tags: focal
outcomes:
  - bd22917e-ab2d-419e-8606-f26112ac74af
  - 8746371f-d9db-47ea-84a4-def265dc0e1f
---

In this activity we will explore methods to iterate over object properties and values using a for-loop – `for PropertyX in ObjectY`


## Objects and Iteration

We have an object, and we want to iterate over each key-value pair.

When iterating over the elements of an array, we can use a loop such as:

```javascript
for (var i = 0; i < 10; i++) {
  // iterating over an array
  console.log(someArray[i]);
}
```

However, JavaScript _objects_, `{key: value}`, themselves are not _iterable_ in the way that arrays are. Instead we need to do things a little differently, using a `for...in` statement.


### Example code

Say we create an object:

```javascript
var planetMoons = {
  mercury: 0,
  venus: 0,
  earth: 1,
  mars: 2,
  jupiter: 67,
  saturn: 62,
  uranus: 27,
  neptune: 14
};
```

In the above example, our `planetMoons` object has 8 keys - one for each planet in our solar system.

We can traverse all the properties of this object using a for-loop, like so:

```javascript
for (var planet in planetMoons) {
  var numberOfMoons = planetMoons[planet];
  console.log("Planet: " + planet + ", # of Moons: "+ numberOfMoons);
}
```

We have the _key_ available to us within the scope of the loop; in the above example it is the `planet` variable. Notice how we access the object using a variable, `planetMoons[planet]`. The variable `planet` iterates over each key ("mercury", "venus", ...) using the for-loop.

#### Limitations of `for ... in`

We should be careful with this looping technique, as it can produce some unexpected results. For reasons which we'll cover in later activities, objects can sometimes have properties that they inherit from their prototype chain as well as method names. An additional filtering step is sometimes necessary:

```javascript
for (var planet in planetMoons) {
  // additional filter for object properties:
  if (planetMoons.hasOwnProperty(planet)) {
    //  ...
  }
}
```

> #### Note
>  If you are curious to read more about this, then check out [this discussion on StackOverflow](http://stackoverflow.com/questions/684672/loop-through-javascript-object). However for now, this should not be a concern.
> If you want to learn more about `for..in`, visit [for...in - Mozilla Developer Network](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in)

## Conclusion

Because objects are not iterable like arrays, we have to use another type of loop. We learned about how to iterate over object properties and values using a `for..in` loop. We saw how to use the `hasOwnProperty` method to ensure we don't get unexpected results.
