---
uuid: c9aa6336-9b82-4542-9a1c-b6635f8383c0
name: 'Looping - lastIndexOf'
type: 'Assignment'
duration: 60
evaluates_code: true
milestone: true
test_code: |
  describe("lastIndexOf", function() {
    it("exists as a function", function() {
      expect(lastIndexOf).to.be.function;
    });
    it("returns a number", function() {
      expect(lastIndexOf([5],5)).to.be.a('number');
    });
    it("returns -1 when empty array", function() {
      expect(lastIndexOf([],1)).to.be.equal(-1);
    });
    it("returns the index when single value", function() {
      expect(lastIndexOf([3],3)).to.be.equal(0);
    });
    it("returns the last index when multiple", function() {
      expect(lastIndexOf([5,5,5,5,0],5)).to.be.equal(3);
    });
    it("returns the last index when single occurrence", function() {
      expect(lastIndexOf([0,0,0,0,5,0],5)).to.be.equal(4);
    });
    it("returns -1 when not found", function() {
      expect(lastIndexOf([0,0,0,0,0],1)).to.be.equal(-1);
    });
  });
solution_code: |
  const lastIndexOf  = function (arr, x) {
    for(let i = arr.length - 1; i >= 0; i--) {
      if (arr[i] === x) {
        return i;
      }
    }
    return -1;
  }

---

In this challenge, we will be building a function that determines the last index of an item in an array.

## Challenge

> #### Instruction
> Define a function `lastIndexOf`.

When this function is given an array and a value, it should return the index of the last time the value occurs in the array. If the value never occurs, the function should return `-1`.

For example:

| code  | output |
| ----- | ------ |
|  `lastIndexOf([ 0, 1, 4, 1, 2 ], 1);`  |  `3`  |
|  `lastIndexOf([ 0, 1, 4, 1, 2 ], 2);`  |  `4`  |
|  `lastIndexOf([ 0, 1, 4, 1, 2 ], 3);`  |  `-1`  |
|  `lastIndexOf([ 5, 5, 5 ], 5);`  |  `2`  |
|  `lastIndexOf([], 3);`  |  `-1`  |

> #### Warning
> JavaScript has a `.indexOf` function (which does something similar), but you may not use it in this exercise.

## Tips

* You may paste the following code after your function definition to help you verify it works correctly:

```javascript
console.log(lastIndexOf([ 0, 1, 4, 1, 2 ], 1), "=?", 3);
console.log(lastIndexOf([ 0, 1, 4, 1, 2 ], 2), "=?", 4);
console.log(lastIndexOf([ 0, 1, 4, 1, 2 ], 3), "=?", -1);
console.log(lastIndexOf([ 5, 5, 5 ], 5), "=?", 2);
console.log(lastIndexOf([], 3), "=?", -1);
```

> #### Warning
> **Do not work on your solution in the code editor provided on this page.**

The text editor provided on this page is intended for submitting and validating solutions, and not meant to be used for actual development. You may lose changes that you make in this editor.

> #### Instruction
> Submit your code

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.


