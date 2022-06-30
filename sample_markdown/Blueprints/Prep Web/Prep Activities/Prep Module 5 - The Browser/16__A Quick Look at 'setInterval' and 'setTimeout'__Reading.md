---
uuid: cc3e525e-55d5-469a-b52d-4d9621d3e518
duration: 15
---

JavaScript has a number of handy functions that allow for code to be run after a specific amount of time has passed. In this reading, we will quickly cover JavaScript timer functions.

## `setTimeout`

`setTimout` is a function built into JavaScript that runs code after a specified time limit (in milliseconds).

```javascript
const sayHello = function() {
  alert("Hello");
}
setTimeout(sayHello, 3000);
```

In the example above, we pass `setTimeout` a function as its first parameter, and the time in milliseconds as the second parameter.

The instant `setTimeout` is called, it begins to wait until the amount of time passed since it was called reaches the amount of milliseconds passed as its second parameter. Once that time is reached, it executes a single call of the function passed as the first parameter. In this case, an alert with the text 'Hello' will appear after 3000 milliseconds, or 3 seconds.

Note that the first parameter is `sayHello` and not `sayHello()`--this is how we pass the function itself as an parameter, rather than immediately calling the sayHello function and passing its return value (if it had one).

Whoa! A function as a parameter? That may be a little surprising to see, since you have yet to be introduced to this. Functions in JavaScript can take other functions as parameters. This is something we'll cover more in-depth later in the bootcamp.

### `setInterval`

`setInterval` is very similar to `setTimeout` in how it is called, but rather than call the function passed to it once after a specified amount of time, it calls the function **every time** the specified amount of milliseconds pass.

```javascript
const sayHello = function() {
  alert("Hello");
}
const timer = setInterval(sayHello, 3000);
```

In this example, an alert with the text 'Hello' will appear _every_ 3 seconds.

You may have noticed a difference in the way `setInterval` was called compared to `setTimeout`. We are assigning its return value to a variable!

When you call `setInterval`, it returns a unique identifier for that specific timer. It's crucial to store that identifier for later because without it, the timer cannot be stopped! In the example above, an alert would appear every 3 seconds for as long as someone was on the page. Not good.

In order to stop the timer we created with `setInterval`, we use the function `clearInterval` and pass it the identifier we saved when we called `setInterval`.

```javascript
const sayHello = function() {
  alert("Hello");
}
const timer = setInterval(sayHello, 3000);

clearInterval(timer);
```

That's it! 


