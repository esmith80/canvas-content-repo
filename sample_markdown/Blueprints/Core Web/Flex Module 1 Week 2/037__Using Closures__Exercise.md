


In this activity you'll practice writing your own closures.

## Example – Unique ID Generator

The following is a function that makes use of a closure to return a unique ID every time you call it (starting at 1 and incrementing by 1 each time).

```javascript
function makeIdGenerator() {
  let id = 0;

  // The following is the closure function
  return function() {
    // This inner function accesses and assigns the value of
    // the variable id, which was defined in the parent function
    id += 1;
    return id;
  }
}

// makeIdGenerator returns a function which is assigned to
// the variable nextId
const nextId = makeIdGenerator();

console.log(nextId()); // Logs: 1
console.log(nextId()); // Logs: 2
```


## Exercise 1 – Loaded Die

The following function implements the roll of a die; it returns a random number between 1 and 6 each time it is called.

```javascript
const rollDie = function () {
  return Math.floor(1 + Math.random() * 6);
}

console.log(rollDie());  // 1 (for example)
```

However, instead of a random die, we want to create a cheat die that would let us predict the next number. Create a function called `makeLoadedDie()` which returns a function that when called, seems to generate random numbers between 1 and 6, but in fact returns numbers in a row from a hardcoded list.

```javascript
function makeLoadedDie() {
  const list = [5, 4, 6, 1, 6, 4, 2, 3, 3, 5];
  /* your code here */

  return function() {
    /* your code here */
  }
}

const rollLoadedDie = makeLoadedDie();

console.log(rollLoadedDie());  // 5
console.log(rollLoadedDie());  // 4
console.log(rollLoadedDie());  // 6
```

## Exercise 2 – Countdown

Implement a function `countdownGenerator()` that takes in a number `x` and returns a function that counts down when it is called (see starter code below).

```javascript
const countdownGenerator = function (x) {
  /* your code here */
};

const countdown = countdownGenerator(3);
countdown(); // T-minus 3...
countdown(); // T-minus 2...
countdown(); // T-minus 1...
countdown(); // Blast Off!
countdown(); // Rockets already gone, bub!
countdown(); // Rockets already gone, bub!
```
