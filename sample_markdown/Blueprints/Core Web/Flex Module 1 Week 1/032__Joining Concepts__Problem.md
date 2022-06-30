---
uuid: 9605c1f5-90d1-4b8f-b352-30ccc0592b7f
duration: 45
evaluates_code: true
tags: focal
test_code: |
  describe("joinList", function() {
    it("exists as a function", function() {
      expect(joinList).to.be.function;
    });
    it("comma separates two words", function() {
      expect(joinList(["hello", "world"])).to.be.equal("hello, world");
    });
    it("comma separates four words", function() {
      expect(joinList(["gists", "types", "operators", "iteration", "problem solving"])).to.be.equal("gists, types, operators, iteration, problem solving");
    });
    it("simply reports back the one word", function() {
      expect(joinList(["solo"])).to.be.equal("solo");
    });
    it("reports empty string with no items in array", function() {
      expect(joinList([])).to.be.equal("");
    });
  });
outcomes:
  - a47c2d15-1a32-4f97-9574-dd37e1c5781b
  - a8582b46-f168-4eb8-8227-571cab249e5f
  - 68766b84-eb9a-44ab-87a9-29207ec8f60e
  - 85afb2f8-283b-48e4-bef7-99756ddfe6a6
---

In this activity we're going practice solving problems and working with arrays, iteration and conditionals by solving a common string manipulation problem.

## Joining An Array of Strings

Having learned about arrays, we can make a short list of the concepts we've learned recently.

```javascript
const conceptList = ["gists", "types", "operators", "iteration", "problem solving"];
console.log(conceptList);
```

But the output of this code in the Terminal is not very easy to read.

```terminal
node concepts.js
['gists', 'types', 'operators', 'iteration', 'problem solving']
```

It could certainly be more human readable! So we decide to write a small algorithm for joining the strings in `conceptList` together, separated by commas, such that the final output looks like the following.

### Expected Output

```terminal
node concepts.js
Today I learned about gists, types, operators, iteration, problem solving.
```

We want to take our array of strings and concatenate its contents together, with each list item separated from the previous one by a comma.

> #### Warning
> While we may be tempted, we should **not** use [Array.prototype.join](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join) to solve this problem. We're creating a simpler version of `.join`. 

In the future when the goal is not to build this type of function itself, we indeed ought to use `.join` on an array to solve problems like these. 

## Setup

> #### Instruction
> Fork and clone [this gist](https://gist.github.com/kvirani/7f98a6a8c067e1ff8d754f2289c6a382) into our `focal` directory. 

<div></div>

> #### Instruction
> Run the `joinList.js` file to ensure that you can and that you can see an error message due to incomplete code.

```terminal
node joinList.js
```

## Challenge

> #### Instruction
> Come up with an algorithm for the `joinList` function, using pseudocode.

The function should take an array as input and return a comma separated string from that array. There are tips below that we suggest you read prior to attempting this challenge.

> #### Instruction
> Implement the function in `joinList.js`.

### Thinking like a computer

One of the questions we often have to ask ourselves in a situation like this is _"What should our code do with NO input?"_. Given our `joinList` function, we are writing it to accept an array with your concepts in it. 

> #### Question
> But what should happen if we provide it with an empty array? What do you think is the right output if you submit an empty input? 

????empty-array-behavior
At a basic level, `joinList` returns a string, right? So, we should ideally get a string back in all cases. Make sure that if `joinList([])` is called, that it handles this situation properly, by returning an empty string.
????

### Tips

Even if we're comfortable defining algorithms of this kind, it is always helpful to write our code in small pieces that we can test and then build upon.

Because we know we'll want to look at every item in the array, start by looping through its contents and printing them out. Once that works, try concatenating them together into one long string inside the loop.

Now that we've put our words together, we can add commas between them. We may now have an extra comma at the very end of the string. If we do, then think of how we can make the code decide whether or not it should add a comma after a word.

Finally, put it all together. Let's make sure that our code is clean, readable and solves the problem correctly.

## Complete Assignment

Instead of submitting the gist, we'll be using the Compass Code Evaluator to **submit code for _just_ the `joinList` function definition** and _not_ the code around it. The evaluator will run its own set of tests against the function.
