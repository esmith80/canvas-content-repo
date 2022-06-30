---
uuid: 752578eb-0800-4306-97d5-a27656d40341
name: 'Concatenate Arrays'
type: 'Assignment'
duration: 60
evaluates_code: true
milestone: true
test_code: |
  describe("concat", function() {
    it("exists as a function", function() {
      expect(concat).to.be.function;
    });
    it("returns an array", function() {
      expect(concat([5],[5])).to.be.a('array');
    });
    it("handles two empty arrays", function() {
      expect(concat([],[])).to.be.eql([]);
    });
    it("handles empty array as 2nd arg", function() {
      expect(concat([1,2,3],[])).to.be.eql([1, 2, 3]);
    });
    it("handles empty array as 1st arg", function() {
      expect(concat([],[4,5,6])).to.be.eql([4,5,6]);
    });
    it("handles two arrays of same length", function() {
      expect(concat([1,2,3],[4,5,6])).to.be.eql([1,2,3,4,5,6]);
    });
    it("does not reorder values", function() {
      expect(concat([5,2,3],[4,9,1])).to.be.eql([5,2,3,4,9,1]);
    });
    it("handles shorter first array", function() {
      expect(concat([5,2],[4,9,1])).to.be.eql([5,2,4,9,1]);
    });
    it("handles shorter second array", function() {
      expect(concat([5,2,3],[9,1])).to.be.eql([5,2,3,9,1]);
    });
  });
solution_code: |
  const concat  = function (a, b) {
    for(x of b) {
      a.push(x);
    }
    return a;
  };
---

We've sent out two researchers to determine, on a scale of 1-10, how much people like lighthouses and they are hitting the streets of Canada to find out what people think. 

Both researchers have stored their numbers in array for each location. This means that we have two different arrays of data for every single location, but we only want a single array for each location. We're going to have to concatenate the arrays from both researchers into a single array.

## Challenge

> #### Instruction
> Define a function called `concat`

The function should, when given two arrays, concatenate the arrays together.

For example:

| code  | output |
| ----- | ------ |
|  `concat([ 1, 2, 3 ], [ 4, 5, 6 ]);`  |  `[ 1, 2, 3, 4, 5, 6 ]`  |
|  `concat([ 0, 3, 1 ], [ 9, 7, 2 ]);`  |  `[ 0, 3, 1, 9, 7, 2 ]`  |
|  `concat([], [ 9, 7, 2 ]);`           |  `[ 9, 7, 2 ]`  |
|  `concat([ 5, 10 ], []);`             |  `[ 5, 10 ]`  |

## Tips

* You may paste the following code after your function definition to help you verify it works correctly:

```javascript
console.log(concat([ 1, 2, 3 ], [ 4, 5, 6 ]), "=?", [ 1, 2, 3, 4, 5, 6 ]);
console.log(concat([ 0, 3, 1 ], [ 9, 7, 2 ]), "=?", [ 0, 3, 1, 9, 7, 2 ]);
console.log(concat([], [ 9, 7, 2 ]), "=?", [ 9, 7, 2 ]);
console.log(concat([ 5, 10 ], []), "=?", [ 5, 10 ]);
```

> #### Warning
> **Do not work on your solution in the code editor provided on this page.**

The text editor provided on this page is intended for submitting and validating solutions, and not meant to be used for actual development. You may lose changes that you make in this editor.

> #### Instruction
> Submit your code.

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.

