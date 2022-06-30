---
uuid: 047921f7-6f94-42f4-a7e2-af53f4ed2e21
name: 'Looping and Repetition'
type: 'Assignment'
duration: 90
outcomes:
# eljs - while and do loops
  - c213a8b7-d6b5-43fe-b929-4ff3d650922e
  - 5e7abeea-b9fb-4846-85c6-2c3046118bc1
  - 65830b83-8253-46f6-9397-eb5910c77079
  - 0d261845-b437-42d9-8e07-8e0971365911
  - 97a16068-26c6-4bc0-b7a0-72fd9ae3deb6
  - 497e92d5-b06e-405e-be22-a5f34d1a060d
  - 1000753a-07ee-446c-b7c8-90d831a4d2dd
# eljs - for loops
  - 789a1453-24cf-4195-843c-60eb8d07eb92
  - 7a9982bc-74d2-403f-88b6-31e35db4573c
# eljs - break
  - 33c356ad-06d5-418e-88a4-6ebf43b01388
  - 2438a095-c7fc-4ed7-82e8-dd7fae60ad77
# exercises
  - 20c81186-140f-4cd4-85ea-880e12c7c465
---

Looping is a crucial feature of programming languages that we'll need to understand before we can solve most programming problems. In this exercise, we're going to practice two common types of loops: the `for` loop and the `while` loop.

## While Loops

> #### Instruction
> Create a new file to tinker with the `while` loop examples.

Create a new file in your `lighthouse-js-fundamentals` directory on Vagrant called `chorus-while.js`. Write out the following code into the file. Every time there is a code example in this exercise, write it out in a JavaScript file and run it. Then try changing the code a bit—update values, reorder statements, etc.—to see how the output changes. 

We've been working with a pop idol on a new song, and to make sure it's a bonafide ear worm, the label wants us to repeat the chorus ten times at the end of the song. Wanting to practice some JavaScript, we decide to write a `while` loop to print out the chorus ten times.

```javascript
const chorus = "Let's dance!";
let repeat = 0;
while (repeat < 10) {
  console.log(chorus);
  repeat++;
}
console.log("Until the sun comes up!");
```

We should see `"Let's dance!"` printed 10 times, followed by `"Until the sun comes up!"`.

How does this work? The `while` statement, similar to an `if`, takes a condition, and as long as this condition evaluates to `true`, the code inside the block will be executed again and again. To make sure we don't execute this code forever, we've declared a `repeat` variable that starts at 0 and increments by 1 (`repeat++` is shorthand for `repeat = repeat + 1`) at every repetition of the block. The following is a representation of what our condition looks like at every step.

```javascript
(0 < 10) // repeat is 0
(1 < 10) // repeat is 1
(2 < 10) // repeat is 2
(3 < 10) // repeat is 3
(4 < 10) // repeat is 4
(5 < 10) // repeat is 5
(6 < 10) // repeat is 6
(7 < 10) // repeat is 7
(8 < 10) // repeat is 8
(9 < 10) // repeat is 9
(10 < 10) // repeat is 10
```

When the value of `repeat` reaches 10, our `while` condition is no longer `true` and so JavaScript stops executing the contents of the block following the `while` statement and moves on.

Like blocks following `if` statements, any code can go inside the block following a `while`. For example, if we're worried our song outro is too repetitive we might decide to change the key after five repetitions.

```javascript
const chorus = "Let's dance!";
let repeat = 0;
while (repeat < 10) {
  if (repeat === 5) {
    console.log("*change key*");
  }
  console.log(chorus);
  repeat++;
}
console.log("Until the sun comes up!");
```

Here, before printing the chorus for the sixth time (sixth because we've started counting at 0, not 1), we also instruct our pop star to change key before continuing. This works because the value of `repeat` will be equal to 5 only once—on the sixth iteration of our loop.


> #### Instruction
> Before continuing, commit your code.

```terminal
git add chorus-while.js
git commit -m "Use a while loop to repeat a chorus line" 
```

## For Loops

> #### Instruction
> Create a new file to tinker with the `for` loop the examples.

Create a new file in your `lighthouse-js-fundamentals` directory on Vagrant called `chorus-for.js`. 

Another common structure for looping in JavaScript is the `for` loop. The idea of a `for` loop is very similar to a `while`, only all the code that relates to the state of the loop is written on one line. 

```javascript
const chorus = "Let's dance!";
for (let repeat = 0; repeat < 10; repeat++) {
  console.log(chorus);
}
console.log("Until the sun comes up!");
```

This new chorus program produced the same result as our first program in this exercise. But as we can see, our counter variable, `repeat`, our condition that should be `true` for our loop to continue, and the incrementing of our counter variable, are all written in one line.

> #### Warning 
> Be careful with the syntax—a `for` loop requires three statements separated by semicolons. The first is for initializing the loop, most commonly to declare our counter variable, the second for defining our `while` condition, and the last for updating the state of our loop after every step.

<div></div>

> #### Instruction
> Before continuing, commit your code.

```terminal
git add chorus-for.js
git commit -m "Use a for loop to repeat a chorus line" 
```

> #### Instruction
> Push all of your code to github.

Make sure that you've added and committed all of your files from this exercise. If you run `git status` from within the `lighthouse-js-fundamentals` directory, you should see the following message:

```terminal
nothing to commit, working tree clean
```

If there are changes that you have not yet committed, commit those first.

Once everything has been committed, push your code to github.

```terminal
git push origin master
```

## Conclusion

In this exercise we learned about how we can use `for` and `while` loops to repeat certain lines of code. This is really powerful tool that we can use to drastically reduce the amount of code we have to write.
