---
uuid: 2a91673c-878d-44db-b195-44b48ddc7cf9
name: 'Looping - Range'
type: 'Assignment'
duration: 60
evaluates_code: true
milestone: true
test_code: |
  describe("range", function() {
    it("exists as a function", function() {
      expect(range).to.be.function;
    });
    it("returns an array", function() {
      expect(range(0, 5, 1)).to.be.a('array');
    });
    it("range 0 to 8 by 2", function() {
      expect(range(0, 8, 2)).to.be.eql([0, 2, 4, 6, 8]);
    });
    it("range -9 to 3 by 3", function() {
      expect(range(-9, 3, 3)).to.be.eql([-9, -6, -3, 0, 3]);
    });
    it("returns empty array when no parameters", function() {
      expect(range()).to.be.eql([]);
    });
    it("returns empty array when end > start", function() {
      expect(range(10,0,1)).to.be.eql([]);
    });
    it("returns empty array when step is negative", function() {
      expect(range(0,10,-5)).to.be.eql([]);
    });
  });
solution_code: |
  const range  = function (start, end, step) {
    if ((start != undefined) && (end != undefined) && (step != undefined) && (end >= start) && (step > 0)) {
      const out = [];
      for(let i = start; i <= end; i += step) {
        out.push(i);
      }
      return out;
    } else {
      return [];
    }
  }

---

Creating a long array of repeating numbers can be a time consuming task. Imagine creating an array of every even number from `0` to `100`. In this challenge, we will build a function that creates an array like this for a given `start`, `end`, and `step` parameter.

## Challenge 

> #### Instruction
> Define a function called `range`

* The function takes 3 integer parameters: `start`, `end`, and `step`.
* The function should return an array of numbers from `start` to `end` counting by `step`.

For example:

| code  | output |
| ----- | ------ |
|  `range(0, 10, 2);`  |  `[ 0, 2, 4, 6, 8, 10 ]`  |
|  `range(10, 30, 5);` |  `[ 10, 15, 20, 25, 30 ]` |
|  `range(-5, 2, 3);`  |  `[ -5, -2, 1 ]` |

The function should return an empty array `[]` if given incorrect parameters, such as:

  - `start`, `end`, or `step` being undefined
  - `start` being greater than `end`
  - `step` being 0, or negative

## Hints

* At some point in your code, you may want to use `some_array.push(some_value)`
* You may paste the following code after your function definition to help you verify it works correctly:

```javascript
console.log(range(0, 10, 2));
console.log(range(10, 30, 5));
console.log(range(-5, 2, 3));
```

> #### Warning
> **Do not work on your solution in the code editor provided on this page.**

The text editor provided on this page is intended for submitting and validating solutions, and not meant to be used for actual development. You may lose changes that you make in this editor.

> #### Instruction
> Submit your code

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.

