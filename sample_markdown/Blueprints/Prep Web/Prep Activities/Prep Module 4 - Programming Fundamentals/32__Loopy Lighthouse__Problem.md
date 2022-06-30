---
uuid: 38f1d2b7-514e-4e5d-b3ee-68d7e923c8c6
name: 'Loopy Lighthouse'
type: 'Assignment'
milestone: true
outcomes:
  - 7a9982bc-74d2-403f-88b6-31e35db4573c
  - 68766b84-eb9a-44ab-87a9-29207ec8f60e
  - 0b0999a8-a16a-48c4-bb50-c9433ab95bc5
  - 96daf2a9-9a12-469d-826e-3ac4e3c3c1ea
  - c665cbb9-b722-4a95-b3d3-90e8935250a2
  - 5186c543-519e-4d43-bd63-777c4bc4bd89
  - 85afb2f8-283b-48e4-bef7-99756ddfe6a6
evaluates_code: true
duration: 180
test_code: |
  describe("Checking all 100 console.log statements", function() {
    it("Matches the expected pattern for each log", function() {
      expect(console.backlog.length).to.be.equal(101, "Make sure you're including 100 and 200!");
      console.backlog.forEach(function(log, i) {
        log = log[2]; // only care about the actual contents
        let num = i + 100;
        if (num % 12 === 0) {
          assert.equal(log, "LoopyLighthouse", "For number " + num + " output should be LoopyLighthouse but I found " + log);
        } else if (num % 3 === 0) {
          assert.equal(log, "Loopy", "For number " + num + " output should be Loopy but I found " + log);
        } else if (num % 4 === 0) {
          assert.equal(log, "Lighthouse", "For number " + num + " output should be Lighthouse but I found " + log);
        } else {
          expect(log).to.be.equal(num, "Make sure you console.log the number!")
        }
      });
    });
  });
---

> #### Danger
> In this challenge you'll be using a built-in code-runner. Your code will be evaluated for both style _and_ correctness. If you're using VS Code to write your code, you'll want to ensure that you have VS Code set up with proper tab sizing as outlined in the [Customizing VS Code](/67e8543a-0bc0-4b64-a311-b349497c2fb0) activity. Otherwise, the code-runner will report issues with the spacing in your code.

In this challenge, we're going to put together everything we've learned so far to solve the "Loopy Lighthouse" problem.

## Challenge

We will be writing a program that prints the numbers from 100 to 200 to the console, with three exceptions:

- If the number is a multiple of 3, print the string `"Loopy"` instead of the number.
- If the number is a multiple of 4, print the string `"Lighthouse"` instead of the number.
- If the number is a multiple of both 3 and 4, print the string `"LoopyLighthouse"` instead of the number.

By print, we are referring to `console.log`.

## Approach

This is the first time we've worked on a bigger problem, so let's break this down into steps.

> #### Instruction
> Execute the following steps in order to complete this challenge.

* First, create a new `.js` file inside your `lighthouse-js-fundamentals` directory on Vagrant and open it in VS Code.
* Then, start working on your program by writing a loop that prints out all the numbers from 100 to 200, inclusive. Only move on to the next step when that works.
* Next, pick a condition you want to start with, for example printing out `"Loopy"` instead of multiples of 3. Figure out how you're going to check whether a number is a multiple of 3, then write your `if` statement. To verify that it works, consider calculating a few multiples of 3 by hand in a notebook (for example, 102, 105, 108, etc.), then making sure they're being replaced with `"Loopy"` in your output.
* Repeat the previous step with your remaining conditions one at a time until they all work. It may help you be confident in your result if you've also calculated by hand a few multiples of 4 and a few of both 3 and 4.


> #### Danger
> **Do not work on your solution in the code editor provided on this page.**

<div></div>

The text editor provided on this page is intended for submitting and validating solutions, and not meant to be used for actual development. You may lose changes that you make in this editor.


> #### Instruction
> Submit your code

As suggested above, use your command line, `node` runtime, and VS Code editor workflow to implement the solution. Once you're satisfied that it's working and outputting correctly, paste your code into the editor to submit and auto-evaluate it.

It may not pass the checks right away, and give feedback on the code instead. Everyone gets unlimited attempts so it's important to take your time in revising the work locally, then re-attempting a submission by copy/pasting the code into the editor again.
