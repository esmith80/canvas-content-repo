---
uuid: 011bc098-b4a3-42e7-812e-e6bd2581964e
name: 'Conditionals - whichSchool'
type: 'Assignment'
duration: 60
milestone: true
outcomes:
# re: comments
  - 1d80c12a-c291-48aa-b3d8-231f47a5096b
  - 0206b4c3-0889-4c51-89db-9fe6879fd228
  - aefdc33d-5153-4e80-8e02-ba9740c831c4
# exercise
  - 68766b84-eb9a-44ab-87a9-29207ec8f60e
  - ef017e9e-70e1-4a67-9c43-ee7dad369caa
  - 96daf2a9-9a12-469d-826e-3ac4e3c3c1ea
  - 0b0999a8-a16a-48c4-bb50-c9433ab95bc5
  - e3abe961-dc46-4246-873a-e63675e378ab
evaluates_code: true
initial_code: |
  const whichSchool  = function (age) {
    // Your code in here ...
  }
test_code: |
  describe("whichSchool", function() {
    it("For ages 13 to 18 returns Secondary School", function() {
      for (i = 13; i < 18; i++) {
        expect(whichSchool(i)).to.be.equal("Secondary School");
      }
    });
    it("For ages 19 to let's say 100 returns Lighthouse Labs", function() {
      for (i = 19; i < 100; i++) {
        expect(whichSchool(i)).to.be.equal("Lighthouse Labs");
      }
    });
    it("For ages 1 to 12 returns Elementary School", function() {
      for (i = 1; i < 12; i++) {
        expect(whichSchool(i)).to.be.equal("Elementary School");
      }
    });
  });
---


> #### Danger
> In this challenge you'll be using a built-in code-runner. Your code will be evaluated for both style _and_ correctness. If you're using VS Code to write your code, you'll want to ensure that you have VS Code set up with proper tab sizing as outlined in the [Customizing VS Code](/67e8543a-0bc0-4b64-a311-b349497c2fb0) activity. Otherwise, the code-runner will report issues with the spacing in your code.

Society is facing a new kind of problem, choice overload. We have so many choices today, that making decisions can be too difficult. We're going to help anyone that is trying to decide which school they should attend, by writing some code that decides for them. 

In this challenge, we will write some logic to help learners decide which school they should attend.

## Challenge

> #### Instruction
> Complete the logic in the function `whichSchool`. 

The logic should help learners decide which school they should attend. Replace the comment _inside_ the function with your code.

The function returns one of the following strings, based on the value of age:

* `Elementary School` if `age` is below 13
* `Secondary School` if `age` is between 13 and 18 (both inclusive)
* `Lighthouse Labs` in all other cases.

<aside>
<h3>Comments in JavaScript</h3>
<p>Writing good, conventional code goes a long way in keeping our programs clear and understandable, but sometimes it's useful to explain pieces of it in plain old English (or any other language, really). We can do that with comments.</p>

<p>In JavaScript, any text following <code>//</code> or between <code>/*</code> and <code>*/</code> are comments and will not be evaluated. For example, <code>// this is a comment</code> and <code>/* this is a comment too */</code>.
</aside>

## Tips

* Work incrementally, by writing and testing each scenario individually, instead of writing out the entire logic.
* Use the automatic test results (when you click Evaluate) to do your testing. Combine that with the `console.log` approach if/as needed
* That said, you can also add `console.log` statements outside (below) the function definition to call the function and see what it returns. Example code below:

```javascript
console.log("I am 35. Which school should I go to?");
console.log(whichSchool(35));
console.log("I am 8. Which school should I go to?");
console.log(whichSchool(8));
console.log("I am 14. Which school should I go to?");
console.log(whichSchool(14));
```

> #### Note
> It's very important to understand and keep in mind that `console.log` is for developers to keep an eye on what's going on. It is **not** the same as `return`, which is how the function responds with the correct value. 

In the code snippet above, we are using them together. We are calling the `whichSchool` function inside the the `console.log` function. The `whichSchool` function does its calculation and `return`s the value back to us which the log function then outputs to the console for us to see.

The `console.log` code above is therefore _not_ required for getting this exercise to PASS successfully. It's just for developers to keep an eye on what's going on.

> #### Instruction
> Submit your code.

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.
