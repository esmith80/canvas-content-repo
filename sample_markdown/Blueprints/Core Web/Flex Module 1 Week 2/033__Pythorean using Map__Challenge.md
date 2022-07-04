

Another popular Higher-Order function commonly used with arrays is [`Array.prototype.map`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map).

> #### Instruction
> Take a moment to read about [Pythagorean Theorem](https://en.wikipedia.org/wiki/Pythagorean_theorem). Actually, here's the important bit: `z^2 = x^2 + y^2`.

<div></div>

> #### Instruction
> Complete the following code for the assertion to pass. 

```javascript
const input = [
  { x: 3, y: 4 },
  { x: 12, y: 5 },
  { x: 8, y: 15 }
];
const result = input.map(/* Your code here */);

console.log(result[0] === 5);
console.log(result[1] === 13);
console.log(result[2] === 17);
```

The result should be an array of numbers corresponding to the x-y pairs provided in the input array (ie: calculate z given x and y).
