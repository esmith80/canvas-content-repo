---
uuid: 5b571867-c460-4467-8556-ce0324d2d98f
duration: 90
evaluates_code: true
name: "Debug III - calculateDayInYear"
type: Challenge
stretch: true
tags: focal-adv
test_code: |
  describe("calculateDayInYear", function() {
    it("exists as a function", function() {
      expect(calculateDayInYear).to.be.a('function');
    });
    it("calculates 2015/12/31 as day 365 of the year", function() {
      expect(calculateDayInYear("2015/12/31")).to.be.equal(365);
    });
    it("calculates 2000/3/2 as day 62 of the year", function() {
      expect(calculateDayInYear("2000/3/2")).to.be.equal(62);
    });
    it("calculates 1900/3/2 as day 61 of the year", function() {
      expect(calculateDayInYear("1900/3/2")).to.be.equal(61);
    });
    it("calculates 2012/2/29 as day 60 of the year", function() {
      expect(calculateDayInYear("2012/2/29")).to.be.equal(60);
    });
  });
outcomes:
  - 2c3acd77-7d1a-4b74-acc2-336bb8787804
---

In this activity we're going to challenge our debugging skills by fixing an incorrect program.

## Setup

> #### Instruction
> Fork and clone [this gist](https://gist.github.com/kvirani/5fefc41fc9f0da6e61888750e058a5c4) into our `focal` directory. 

## Challenge

The code defines a function `calculateDayInYear` which calculates the day of the year for a particular date string.

The following are a few correct day of the year calculations:

```terminal
1900/3/2 is day 61 of the year 1900
2000/3/2 is day 62 of the year 2000
2012/2/29 is day 60 of the year 2012
2015/12/31 is day 365 of the year 2015
```

If we execute the program with the above dates (or others you may want to add in), we'll notice it doesn't always produce the correct result. 

> #### Instruction
> Read the code carefully and understand what it's trying to accomplish, then debug and fix any mistakes you find until you're confident it's producing the correct results.

### Calculating a Leap Year

How is a leap year calculated? 

1. Divide the year you want to check by 4. If it _is not_ evenly divisible (it has a remainder), it's _is not_ a leap year. If it _is_ evenly divisible (it has no remainder) continue to step 2.
2. Divide the year by 100. If the year _is_ evenly divisible by 4 but _is not_ evenly divisible by 100, it _is_ a leap year. If it _is_ evenly divisible by _both_ 4 and 100, continue to step 3.
3. Divide the year by 400. If the year _is_ evenly divisible by 100, but _is not_ evenly divisible by 400, it _is not_ a leap year. If it _is_ evenly divisible by _both_ 100 and 400, it _is_ a leap year.

For a more visual example check out [this link](https://www.wikihow.com/Calculate-Leap-Years).

### Testing Your Work

You may have noticed some extra outputs below the your result. To help us test our fixes, there are 4 simple lines to the bottom of the file.

```javascript
console.log("Tests:");
console.log("---------------");
console.log(calculateDayInYear("1900/3/2") === 61);
console.log(calculateDayInYear("2000/3/2") === 62);
console.log(calculateDayInYear("2012/2/29") === 60);
console.log(calculateDayInYear("2015/12/31") === 365);
```

These lines run the function with a predetermined parameter and compare the output to the value we are expecting to get!
    
The console.log will output either `true` or `false` after the function output based on whether or not the function returns a value that matched our expected value (note the `===`).

The code works correctly when all of these tests return `true`.

## Complete Assignment

While we have included simple tests to the exercise, when submitting this exercise you are still expected to use the Compass Code evaluator to validate that the function works correctly.

> #### Instruction 
> Copy and paste your code, excluding the `console.log`-based test code that is at the bottom, into the Compass Code Evaluator.

The evaluator will automatically call the function to check that it returns the correct results. This is why we don't have to include any code which actually calls the functions.

## Teacher Notes

Below is a link the code with debugging solutions in comments. The students may come up with different solutions than this, but this should demonstrate where the bugs are and where the students should be looking in order to locate and fix them. d

<https://gist.github.com/kvirani/3510d3e50216c51cdf1b5c32ba1481f6>
