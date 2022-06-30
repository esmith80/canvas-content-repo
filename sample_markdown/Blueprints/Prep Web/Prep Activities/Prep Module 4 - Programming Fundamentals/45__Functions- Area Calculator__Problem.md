---
uuid: 2b48a08c-e0dd-42c0-9665-a2750265d02e
name: 'Functions - Area Calculators'
type: 'Assignment'
duration: 60
evaluates_code: true
milestone: true
test_code: |

  describe("calculateRectangleArea", function() {
    it("exists as a function", function() {
      expect(calculateRectangleArea).to.be.function;
    });
    it("returns a number", function() {
      expect(calculateRectangleArea(10, 20)).to.be.a('number');
    });
    it("rectangle of sides 20 and 50 has area 1000", function() {
      expect(calculateRectangleArea(20, 50)).to.be.equal(1000);
    });
    it("rectangle of sides 1.5 and 3.5 has area 5.25", function() {
      expect(calculateRectangleArea(1.5, 3.5)).to.be.equal(5.25);
    });
    it("rectangle of sides -1 and 0 has area undefined", function() {
      expect(calculateRectangleArea(-1, 0)).to.be.equal(undefined);
    });
  });

  describe("calculateTriangleArea", function() {
    it("exists as a function", function() {
      expect(calculateTriangleArea).to.be.function;
    });
    it("returns a number", function() {
      expect(calculateTriangleArea(10, 20)).to.be.a('number');
    });
    it("triangle of base 20 and height 50 has area 500", function() {
      expect(calculateTriangleArea(20, 50)).to.be.equal(500);
    });
    it("triangle of base 30 and height 3.5 has area 52.5", function() {
      expect(calculateTriangleArea(30, 3.5)).to.be.equal(52.5);
    });
    it("triangle of base -1 and height 0 has area undefined", function() {
      expect(calculateTriangleArea(-1, 0)).to.be.equal(undefined);
    });
  });

  describe("calculateCircleArea", function() {
    it("exists as a function", function() {
      expect(calculateCircleArea).to.be.function;
    });
    it("returns a number", function() {
      expect(calculateCircleArea(10)).to.be.a('number');
    });
    it("circle of radius 20 has area 1256.636", function() {
      expect(calculateCircleArea(20)).to.be.closeTo(1256.636, 0.1);
    });
    it("circle of radius 1.5 has area 7.069", function() {
      expect(calculateCircleArea(1.5)).to.be.closeTo(7.069, 0.1);
    });
    it("circle of radius -1 has area undefined", function() {
      expect(calculateCircleArea(-1)).to.be.equal(undefined);
    });
  });

solution_code: |

  const calculateRectangleArea  = function (w,h) {
    if (w > 0 && h > 0) {
      return w * h;
    }
  }

  const calculateTriangleArea  = function (b,h) {
    if (b > 0 && h > 0) {
      return b * h * 0.5;
    }
  }

  const calculateCircleArea  = function (r) {
    if (r > 0) {
      return Math.PI * r * r;
    }
  }

---

We're going to carve some pumpkins to prepare for Halloween. We'll start out easy and just carve circles, triangles, and rectangles. We need to know how much pumpkin scraps we'll have once we're done though, so we'll need to be able to calculate the areas of each of those shapes.

## Challenge

In this exercise, we will define 3 functions to calculate the areas of 3 different shapes: 

* rectangles
* triangles
* circles

> #### Instruction
> Create the following 3 functions with the correct logic to calculate the area of that shape.

- `calculateRectangleArea(length, width)`
- `calculateTriangleArea(base, height)`
- `calculateCircleArea(radius)`

The parameters to the functions will always be numbers.

Each function should return a number that corresponds to the area of the shape. Here is the math for each of the shapes:

- rectangle: `length × width`
- triangle: `base × height / 2`
- circle: `π × radius`<sup>2</sup>

If any of the parameters are negative, the function should return `undefined`.

### Tips

* To access the value of `π` in your JavaScript code, use `Math.PI`.
* You may paste the following code after your function definitions to help you verify they work correctly.

```javascript
console.log(calculateRectangleArea(10, 5));     // should print 50
console.log(calculateRectangleArea(1.5, 2.5));  // should print 3.75
console.log(calculateRectangleArea(10, -5));    // should print undefined

console.log(calculateTriangleArea(10, 5)); // should print 25
console.log(calculateTriangleArea(3, 2.5)); // should print 3.75
console.log(calculateTriangleArea(10, -5)); // should print undefined

console.log(calculateCircleArea(10)); // should print 314.159...
console.log(calculateCircleArea(3.5)); // should print 38.484...
console.log(calculateCircleArea(-1)); // should print undefined
```

> #### Warning
> **Do not work on your solution in the code editor provided on this page.**

The text editor provided on this page is intended for submitting and validating solutions, and not meant to be used for actual development. You may lose changes that you make in this editor.

> #### Instruction
> Submit your code.

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.
