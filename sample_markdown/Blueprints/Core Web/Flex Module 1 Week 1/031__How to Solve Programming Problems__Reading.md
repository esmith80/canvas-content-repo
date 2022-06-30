---
uuid: 5a265937-8809-4310-9a04-be0d943a7ebb
duration: 30
name: Solving Problems With Pseudocode 
outcomes:
  - 46bd3b64-e729-4363-b532-ce8b8af9ea93
  - 98bf2cd1-bd45-4d5b-a171-a262de6e3e8e
  - c324642d-9f92-48d3-b26c-99a30d13b7e8
# the problem
  - b9d33544-cf2f-4b9a-bd34-91a3f94658e0
  - 7a9982bc-74d2-403f-88b6-31e35db4573c
  - 68766b84-eb9a-44ab-87a9-29207ec8f60e
  - 0b0999a8-a16a-48c4-bb50-c9433ab95bc5
  - 96daf2a9-9a12-469d-826e-3ac4e3c3c1ea
  - c665cbb9-b722-4a95-b3d3-90e8935250a2
  - 5186c543-519e-4d43-bd63-777c4bc4bd89
  - 85afb2f8-283b-48e4-bef7-99756ddfe6a6
---

In this activity you're going to learn how to solve programming problems by formalizing problem descriptions, breaking problems down into smaller parts and using pseudocode to design solutions before translating them into JavaScript.

## Reading

The Prep Course contained a problem called [Loopy Lighthouse](/38f1d2b7-514e-4e5d-b3ee-68d7e923c8c6). The problem was defined as follows:

> #### Instruction
> Write a program that prints the numbers from 100 to 200 to the console, with three exceptions:
> - If the number is a multiple of 3, print the String `"Loopy"`.
> - If the number is a multiple of 4, print the String `"Lighthouse"`.
> - If the number is a multiple of both 3 and 4, print the String `"LoopyLighthouse"`.

Before we work on more difficult problems, let's go over how to solve this one. You may already have solved it, but formalizing a strategy for how to repeat that action is an important skill in a programmer's toolkit. In computer science lingo, this means we're going to learn how to define algorithms.

### Understand the Problem

The first step in solving a tricky programming problem is making sure we fully understand it. Unlike our brains, computers can't make intuitive adjustments as they work through problems and therefore need formalized, sequential solutions – and we cannot define any such solutions without fully understanding the problem up front.

This means we need to know a couple important things. First, what is the input to the problem. In our case, we've got several values as inputs:

- the range 100 to 200
- the strings `"Loopy"`, `"Lighthouse"` and `"LoopyLighthouse"`
- the multiples 3 and 4

You may be wondering why these would be considered inputs if they don't vary from execution to execution, and that is because they are the necessary ingredients of our problem. We wouldn't be able to print a range of numbers without knowing where to start and where to end, nor without knowing that a range of numbers is made up of, well, numbers! This second point may sound silly – of course numbers are numbers! But while this is obvious to us, it is not to a computer. If you were asked to list all the numbers from one to purple you would probably do anything but start counting – a computer wouldn't bat an eye and would do just that until the program crashed. This is why it's important to know the types of values we expect our inputs to be so we may write code that knows how to handle them.

Second, we need to know what the expected output of our program is. In our case it's not immediately obvious what that should be, so it's a good idea to calculate the first few steps by hand.

```markdown
Lighthouse
101
Loopy
103
Lighthouse
Loopy
106
107
LoopyLighthouse
109
```

This helps us recognize patterns that can be generalized into a solution and gives us a sample output of the program we can later verify against the code we've written to ensure our solution is correct.

Another invaluable side effect of taking the time to understand a problem up front is that it's not uncommon in the real world to be presented with unclear or incomplete problem statements. In such cases, if we immediately started coding, we may waste time working on a solution only to later find it's never going to work because the problem is missing crucial information or doesn't make any sense. Most of the time this is unintentional. It's likely you'll be given problems to solve by people who know nothing about computer programming, which means it'll be *your* job to ensure the problems are clearly and fully defined.

### Try Writing Pseudocode First

Before you start writing code, it's a good idea to describe in English (or whichever language you're most comfortable with) the solution you're going to implement. This is often done with pseudocode. Pseudo means "almost", so pseudocode is "almost code" – that is, it's English text that can easily be translated to JavaScript.

This step may seem unnecessary, and if you've got enough experience programming it may be, but its benefit is in separating *what* you want to do from *how* you're going to do it. For example, if you wanted to introduce yourself in a foreign language you've just started learning, you would formulate your thoughts in your native language first before translating them into the new language. It would be much more difficult to speak in a new language without knowing what you wanted to say in the first place!

### Loop Over the Range

When we're just starting to program it can be difficult to keep all the different pieces of a problem in our head. To overcome this we're going to break our problem down into smaller pieces. In Loopy Lighthouse, we can start by printing out all the numbers between 100 and 200 without worrying about any of the exceptional cases.

> Write a program that prints the numbers from 100 to 200 to the console...

Written in pseudocode, this could look as follows.

```markdown
Loop from 100 to 200:
  Let num = the current step in the loop
  Print num
End loop
```

If we were to try simulating a computer's execution of the first few steps of this pseudocode, we would have the following.

```markdown
100
101
102
103
104
105
106
107
108
109
```

So far so good! That's already a good chunk of the expected output we defined above.

### Add a Condition

Now that we know how we're going to print out the range of numbers, we can figure out how to incorporate the first condition into our pseudocode.

> #### Instruction
> Write a program that prints the numbers from 100 to 200 to the console, with three exceptions:
> - If the number is a multiple of 3, print the String `"Loopy"`.

We can start by writing down the condition for when we want to print `"Loopy"` and writing down that otherwise we're going to continue printing the current step in the loop.

```markdown
Loop from 100 to 200:
  Let num = the current step in the loop
  If num is a multiple of 3:
    Print "Loopy"
  Otherwise
    Print num
  End if
End loop
```

But if we tried to simulate a computer's execution step-by-step, we would get stuck at `If num is a multiple of 3` – how do we know whether something is a multiple of 3? More importantly, how would a computer know?

Here we can remember that the modulo operator `%` returns the remainder in a division of two numbers, and that a number is a multiple of another if their division produces no remainder. That is, if the remainder of dividing the current step in the loop (`num`) by 3 is 0, then it's divisible by 3.

```markdown
Loop from 100 to 200:
  Let num = the current step in the loop
  If num % 3 is equal to 0:
    Print "Loopy"
  Otherwise
    Print num
  End if
End loop
```

### Add the Rest of the Conditions

Now that we know how to add one condition, we can easily add the rest.

```markdown
Loop from 100 to 200:
  Let num = the current step in the loop
  If num % 3 is equal to 0:
    Print "Loopy"
  Else if num % 4 is equal to 0:
    Print "Lighthouse"
  Else if num % 3 is equal to 0 and num % 4 is equal to 0:
    Print "LoopyLighthouse"
  Otherwise
    Print num
  End if
End loop
```

This looks like it should work! Let's simulate a computer's execution of our solution by going through our pseudocode line by line. If we do that correctly, our output would look like the following.

```markdown
Lighthouse
101
Loopy
103
Lighthouse
Loopy
106
107
Loopy
109
```

That looks almost correct; we want to print `"LoopyLighthouse"` instead of 108, not `"Loopy"`. What's going on? Because of the order of our conditions, the third condition (`Else if num % 3 is equal to 0 and num % 4 is equal to 0`) will never be evaluated. This is because when `num` is divisible by both 3 and 4, the first condition will be true first (`If num % 3 is equal to 0`) and the third condition will be skipped. A simple fix would be to reorder the conditions.

```markdown
Loop from 100 to 200:
  Let num = the current step in the loop
  If num % 3 is equal to 0 and num % 4 is equal to 0:
    Print "LoopyLighthouse"
  Else if num % 3 is equal to 0:
    Print "Loopy"
  Else if num % 4 is equal to 0:
    Print "Lighthouse"
  Otherwise
    Print num
  End if
End loop
```

If we simulated execution of this last code, the first ten steps would be correct and this gives us enough confidence that our solution will work. We can now translate it to JavaScript!

### Translate the solution to JavaScript

Because we took the time to solve the problem first, converting it to JavaScript becomes no more than a matter of remembering the syntax.

```javascript
for (let num = 100; num <= 200; num++) {
  if (num % 3 === 0 && num % 4 === 0) {
    console.log("LoopyLighthouse");
  } else if (num % 3 === 0) {
    console.log("Loopy");
  } else if (num % 4 === 0) {
    console.log("Lighthouse");
  } else {
    console.log(num);
  }
}
```

Testing this code in the Terminal we see that it works. We did it!

### But We Can Do Better

Even experienced programmers don't write perfect code the first time through, but they'll take the time to refactor it. How can we do that?

There are numerous strategies for refactoring, many that depend on the purpose of the refactoring itself (like improving performance, readability or code re-use), and while we'll slowly be seeing many of them throughout the bootcamp, we can start with a basic one: finding patterns and minimizing duplicate code. Inside our loop, we've written three very similar `if` statements:

```javascript
  if (num % 3 === 0 && num % 4 === 0) {
    console.log("LoopyLighthouse");
  } else if (num % 3 === 0) {
    console.log("Loopy");
  } else if (num % 4 === 0) {
    console.log("Lighthouse");
  }
```

We're calculating `num % 3 === 0` and `num % 4 === 0` twice each. How can we reduce the number of times we perform these calculations?

We see that at every step of our loop we're printing one thing and one thing only to the console. In the general case we're printing a number, but in the exceptional cases we're printing some combination of the strings `"Loopy"` and `"Lighthouse"`. We can therefore try to build the output we want to print rather than hardcoding it directly. In our exceptional cases this output is a string, so let's try defining a string and building it as we go along.

```javascript
let output = "";
```

We see that every time `num % 3 === 0` is `true` we want to print `"Loopy"`, so let's add it to the output string.

```javascript
let output = "";

if (num % 3 === 0) {
  output += "Loopy";
}
```

If `num` is divisible by 3, we add the string `"Loopy"` to the end of our output. We can then add `"Lighthouse"` to the end of the output when `num` is divisible by 4.

```javascript
let output = "";

if (num % 3 === 0) {
  output += "Loopy";
}
if (num % 4 === 0) {
  output += "Lighthouse";
}
```

This works because when `num` is only divisible by 4, output is `""` and becomes `"Lighthouse"`. When `num` is divisible by both 3 and 4, output is `"Loopy"` and becomes `"LoopyLighthouse"`. We can put it all together with one final piece.

```javascript
for (const num of nums) {
  let output = "";

  if (num % 3 === 0) {
    output += "Loopy";
  }
  if (num % 4 === 0) {
    output += "Lighthouse";
  }
  console.log(output === "" ? num : output);
}
```

<aside>
<h3>Ternary operators</h3>

You may be asking yourself: so what's up with the <code>?</code>s and <code>:</code>s anyway?

<p><code>output === "" ? num : output</code> is using JavaScript's ternary operator. Check out the <a href="https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Conditional_Operator">MDN docs</a> to learn more about it.</p>
</aside>

Once we've built the output string, we want to print one of two things. If `output` is an empty string, that is `""`, then it means we haven't added neither `"Loopy"` nor `"Lighthouse"` to the end of it. In this case `num` must not be divisible by 3 or 4, so we want to print `num`. If `output` is not an empty string, then we've added `"Loopy"`, `"Lighthouse"` or both to it and so we print `output` instead.

### Can We Do Even Better Than This?

The answer to this question is always a loud, resounding YES! Nothing is ever perfect, and code is no exception. The more experience we get writing code, the more ways we find to refactor our solutions. For now, make sure you've built an idea for how you're going to solve problems and keep in mind that once your solution works, you can improve it by refactoring the code.

## Conclusion

Hopefully by the end of this reading you have added yet another strategy for how you solve programming challenges. Pseudocode can be especially helpful while not fluent or proficient in the given programming language. It allows the writer to detach from the syntax of the language and focus solely on the logic itself. 
