---
uuid: 58451af3-8813-4f58-8407-c9b2cf0a9411
name: 'Loopy Lighthouse 2'
stretch: true
type: 'Assignment'
outcomes:
  - e3abe961-dc46-4246-873a-e63675e378ab
  - 3fd178ad-85d0-4f86-91ff-dda5444973a7
  - e571422a-4423-491e-a81c-178145a0c5ec
evaluates_code: true
duration: 180
test_code: |
  describe("Calling: loopyLighthouse([15, 90], [2, 5], [\"Batty\", \"Beacon\"]);", function() {
    it("Matches the expected pattern for each log", function() {
      console.clear();
      loopyLighthouse([15, 90], [2, 5], ["Batty", "Beacon"]);
      assert.equal(console.backlog.length, 76, "Should have 76 log statements");
      console.backlog.forEach(function(log, i) {
        log = log[2]; // only care about the actual contents
        const num = i + 15;
        if (num % 10 === 0) {
          assert.equal(log, "BattyBeacon", "For number " + num + " output should be BattyBeacon but I found " + log);
        } else if (num % 2 === 0) {
          assert.equal(log, "Batty", "For number " + num + " output should be Batty but I found " + log);
        } else if (num % 5 === 0) {
          assert.equal(log, "Beacon", "For number " + num + " output should be Beacon but I found " + log);
        } else {
          expect(log).to.be.equal(num)
        }
      });
    });
  });
---

This is an extension of the previous [Loopy Lighthouse Challenge](/38f1d2b7-514e-4e5d-b3ee-68d7e923c8c6).

## Challenge

Wrap the code you've written in a function called `loopyLighthouse(range, multiples, words)` that you call with 3 parameters. 

* `range` should be an array of 2 numbers representing the start and end values for the loop. 
* `multiples` should be an array of 2 numbers representing the multiples you want to replace with words. 
* `words` should be an array of 2 strings representing the words that will replace the multiples.

For example, say we called the function with the following arguments.

```javascript
loopyLighthouse([15, 90], [2, 5], ["Batty", "Beacon"]);
```

The `loopyLighthouse` function should log to the console all the numbers from 15 to 90, except replacing multiples of 2 with `"Batty"`, multiples of 5 with `"Beacon"`, and multiples of 2 and 5 with `"BattyBeacon"`.

## Tips

As this is a big refactor—that is, a restructuring of the code with the purpose of improving a non-functional feature, in our case reusability–consider tackling it in steps. Start with one of the parameters, test it thoroughly, then add the others one at a time while constantly testing until you've solved the whole problem.

> #### Warning
> **Do not work on your solution in the code editor provided on this page.**

The text editor provided on this page is intended for submitting and validating solutions, and not meant to be used for actual development. You may lose changes that you make in this editor.

> #### Instruction
> Submit your code.

As suggested above and with the original Loopy Lighthouse problem, use your command line, `node` runtime, and VS Code editor workflow to implement the solution. Once you're satisfied that it's working and outputting correctly, paste your code into the editor to submit and auto-evaluate it.

It may not pass our checks right away and give you feedback on your code instead. You get unlimited attempts so take your time in revising your work locally and then re-attempting a submission by copy/pasting your code into the editor again.
