---
uuid: 0a6bc8c2-8222-4190-85e3-b2a7a183ad66
name: 'Functions – howManyHundreds'
type: 'Assignment'
duration: 60
evaluates_code: true
test_code: |
  describe("howManyHundreds", function() {
    it("exists as a function", function() {
      expect(howManyHundreds).to.be.function;
    });
    it("returns a number", function() {
      expect(howManyHundreds(1234)).to.be.a('number');
    });
    it("For 1234 it returns 12", function() {
      expect(howManyHundreds(1234)).to.be.equal(12);
    });
    it("For 0 it returns 0", function() {
      expect(howManyHundreds(0)).to.be.equal(0);
    });
    it("For 55 it returns 0", function() {
      expect(howManyHundreds(55)).to.be.equal(0);
    });
    it("For 100 it returns 1", function() {
      expect(howManyHundreds(100)).to.be.equal(1);
    });
    it("For 1234 it returns 12", function() {
      expect(howManyHundreds(1234)).to.be.equal(12);
    });
    it("For 200 it returns 2", function() {
      expect(howManyHundreds(200)).to.be.equal(2);
    });
    it("For 123456 it returns 1234", function() {
      expect(howManyHundreds(123456)).to.be.equal(1234);
    });
  });
solution_code: |
  const howManyHundreds  = function (x) {
    return (x - (x % 100)) / 100;
  }
---

As humanity gets closer to living on Mars, we must start sending supplies to the red planet now, to prepare for our arrival. So Canada is going to start to send containers of maple syrup. Each container on the space ship can hold exactly 100 bottles of maple syrup. A container will only be sent if it's full. 

Given a certain number of bottles, we need to determine how many containers can be filled and sent. In this challenge, we will write a function that determines how many hundreds can be made from a number. 

## Challenge 

> #### Instruction
> Define a function `howManyHundreds`

When this function is given a number, it should return how many hundreds fit into that number. 

For example:

| code  | output |
| ----- | ------ |
|  `howManyHundreds(1000);` |  `10`  |
|  `howManyHundreds(894);`  |  `8`  |
|  `howManyHundreds(520);`  |  `5`  |
|  `howManyHundreds(99);`   |  `0`  |
|  `howManyHundreds(0);`    |  `0`  |

## Tips

* You may want to make use of the modulo operator (%). For reference: <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Arithmetic_Operators#Remainder_()>
* You may paste the following code after your function definition to help you verify it works correctly:

```javascript
console.log(howManyHundreds(1000), "=?", 10);
console.log(howManyHundreds(894), "=?", 8);
console.log(howManyHundreds(520), "=?", 5);
console.log(howManyHundreds(99), "=?", 0);
console.log(howManyHundreds(0), "=?", 0);
```

> #### Warning
> **Do not work on your solution in the code editor provided on this page.**

The text editor provided on this page is intended for submitting and validating solutions, and not meant to be used for actual development. You may lose changes that you make in this editor.

> #### Instruction
> Submit Your Code

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.

