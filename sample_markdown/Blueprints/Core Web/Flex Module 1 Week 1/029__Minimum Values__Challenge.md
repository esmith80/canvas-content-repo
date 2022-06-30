---
uuid: 35dd1959-2431-46c5-889d-22c184060666
duration: 30
evaluates_code: true
tags: focal
initial_code: |
  function min(numbers) {
    // Write code here that returns the smallest value in numbers
  }
test_code: |
  describe("min", function() {
    it("exists as a function", function() {
      expect(min).to.be.function;
    });
    it("returns 490 when given flight prices [1260, 490, 599, 1400, 820]", function() {
      expect(min([1260, 490, 599, 1400, 820])).to.be.equal(490);
    });
    it("reports -4 given golf scores [-4, -1, 3, 0, 1, 4, -2]", function() {
      expect(min([-1, 3, 0, -4, 1, 4, -2])).to.be.equal(-4);
    });
    it("reports 232 given a single item array [232]", function() {
      expect(min([232])).to.be.equal(232);
    });
    it("reports -20 given [45, 10, -20, 0, 3, -20] where -20 shows up twice", function() {
      expect(min([45, 10, -20, 0, 3, -20])).to.be.equal(-20);
    });
  });
outcomes:
  - 7c70fed0-8ac1-441e-be1a-231370a536c3
  - 37a052fd-f747-4cb6-b8a1-ac351f0f68fc
  - 96daf2a9-9a12-469d-826e-3ac4e3c3c1ea
  - a8582b46-f168-4eb8-8227-571cab249e5f
  - 85afb2f8-283b-48e4-bef7-99756ddfe6a6
---

In this activity, we're going to write code that finds the smallest value in a list of numbers. We will need to use our knowledge of arrays, loops, and variables.

> #### Warning
> Heads up! Not all of the programming problems you will encounter in the next week will be a part of our Lotide project (like this one). As you are reading the instructions pay close attention to ensure you are aware of what activities contribute to Lotide and should therefore be contained in your `lotide` directory.  

On the surface, a program that finds the cheapest flight between Vancouver and Bangkok and one that determines the winner of a golf tournament seem like two completely different things. But when we understand that computer programs are just sequences of calculations that manipulate data, we find that many different real-world problems can be broken down into general, more abstract problems a computer can easily solve.


If we represent flight prices and golf scores as arrays of numbers in JavaScript, we could write a function returning the smallest number in a list, which we could then apply to find the cheapest flight, winning golf score or you name it.

## Setup

> #### Instruction
> Fork and clone [this gist](https://gist.github.com/kvirani/93d265b877e3efc1c5cc7217cc4e8ee3). 

```terminal
cd /vagrant/focal
```

```terminal
git clone https://gist.github.com/93d265b877e3efc1c5cc7217cc4e8ee3.git min
```

## Challenge

> #### Instruction
> Implement the code.

Open `min.js` in VSCode, read all the code you've got to work with, and implement the `min` function so that it returns the smallest value in `numbers`.

> #### Warning
> JavaScript has a [Math.min](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/min) function available which already does this for us. This means that you can _not_ use it in this exercise.

```javascript
const min = function(numbers) {
  // Write code here that returns the smallest value in numbers
}
```

## Tips

* It may be a little while since you've completed the fundamentals of programming module in the Prep Course, in which case you may consider reviewing [looping and repetition in JavaScript](/047921f7-6f94-42f4-a7e2-af53f4ed2e21).
* Break your problem down. Figure out how you're going to look at each item in `numbers` one at a time, then think about how you're going to find the minimum value as you iterate through the list.

## Complete Assignment

> #### Instruction
> Paste your function into the text editor on this page and make it pass all the tests and lint checks.

For this exercise, instead of submitting the gist we ask that you copy/paste your function definition (_only_) in the evaluation editor in Compass and iterate on it until all the lint and test errors are resolved. 

This challenge will automatically be marked as completed once all test and line errors are resolved.
