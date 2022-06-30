---
uuid: 520bdb54-6851-4b40-891b-9a9d444d5f6b
name: 'Merge Arrays'
stretch: true
type: 'Assignment'
duration: 60
evaluates_code: true
test_code: |
  describe("merge", function() {
    it("exists as a function", function() {
      expect(merge).to.be.function;
    });
    it("returns an array", function() {
      expect(merge([5],[5])).to.be.a('array');
    });
    it("handles two empty arrays", function() {
      expect(merge([],[])).to.be.eql([]);
    });
    it("handles empty array as 2nd arg", function() {
      expect(merge([1,2,3],[])).to.be.eql([1, 2, 3]);
    });
    it("handles empty array as 1st arg", function() {
      expect(merge([],[4,5,6])).to.be.eql([4,5,6]);
    });
    it("handles two arrays of same length", function() {
      expect(merge([7,8,9],[1,2,3])).to.be.eql([1,2,3,7,8,9]);
    });
    it("handles repeated values", function() {
      expect(merge([1,2,2],[2,2,4])).to.be.eql([1,2,2,2,2,4]);
    });
    it("handles shorter first array", function() {
      expect(merge([2,8],[1,5,9])).to.be.eql([1,2,5,8,9]);
    });
    it("handles shorter second array", function() {
      expect(merge([1,5,9],[2,8])).to.be.eql([1,2,5,8,9]);
    });
  });
solution_code: |
  const merge  = function (a, b) {
    let x = 0;
    let y = 0;
    const out = [];

    while (x < a.length && y < b.length) {
      if (a[x] < b[y]){
        out.push(a[x]);
        x++;
      } else {
        out.push(b[y])
        y++;
      }
    }

    while (x < a.length) {
      out.push(a[x]);
      x++;
    }

    while (y < b.length) {
      out.push(b[y]);
      y++;
    }

    return out;
  }
---

We've made a mistake, our researchers had already sorted the arrays for us, from least liked to most liked—but our `concat` function didn't take this into account. We'll need to create a new function that keeps our data sorted.

## Challenge

> #### Instruction
> Define a function called `merge`

The function should, when given two sorted arrays containing numbers, returns a sorted array of the numbers from both lists.

For example:

| code  | output |
| ----- | ------ |
|  `merge([ 4, 5, 6 ], [ 1, 2, 3, 4 ]);`  |  `[ 1, 2, 3, 4, 4, 5, 6 ]`  |
|  `merge([ 4 ], [ 2, 5, 8 ]);`           |  `[ 2, 4, 5, 8 ]`  |
|  `merge([ 1, 2, 6 ], []);`              |  `[ 1, 2, 6 ]`  |

## Tips

* You may paste the following code after your function definition to help you verify it works correctly:

```javascript
console.log(merge([ 4, 5, 6 ], [ 1, 2, 3, 4 ]), "=?", [ 1, 2, 3, 4, 4, 5, 6 ]);
console.log(merge([ 4 ], [ 2, 5, 8 ]), "=?", [ 2, 4, 5, 8 ]);
console.log(merge([ 1, 2, 6 ], []), "=?", [ 1, 2, 6 ]);
```

> #### Warning
> **Do not work on your solution in the code editor provided on this page.**

The text editor provided on this page is intended for submitting and validating solutions, and not meant to be used for actual development. You may lose changes that you make in this editor.

> #### Instruction
> Submit your code.

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.

