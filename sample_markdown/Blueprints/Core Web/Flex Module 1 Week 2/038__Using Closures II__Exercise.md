

In this activity you will further practice working with closures. But this time, in a situation where you create a higher order function that returns a function.

## Exercise

### Logging Wrapper

Create a function called `wrapLog()` that takes in a function (`callback`) and a string (`name`) and returns a function that internally invokes (calls) `callback` during its execution and also logs the name, input parameters, and return value of the callback function. Following is a template with example usage.

```javascript
const wrapLog = function (callback, name) {
  /* your code here */
};

const area = function (x, y) {
  return x * y;
};
const logArea = wrapLog(area, "area");

logArea(5, 3); // area(5, 3) => 15
logArea(3, 2); // area(3, 2) => 6

const volume = function (x, y, z) {
  return x * y * z;
};
const logVolume = wrapLog(volume, "volume");

logVolume(5, 3, 2); // volume(5, 3, 2) => 30
logVolume(3, 2, 4); // volume(3, 2, 4) => 24
```

## Additional Resources: JavaScript Functions

The following may be useful:

- Check out the JavaScript documentation from Mozilla on [the arguments object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments)
- Check out the JavaScript documentation from Mozilla on [the apply method](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply)

