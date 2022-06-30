---
uuid: ba6a4409-2a1b-413e-836a-11f3d05fc814
name: 'Conditional Execution'
type: 'Assignment'
duration: 90
outcomes:
  - 7ff2e2a2-8bb1-491b-b145-8ea74b41517e
  - 1afe50f6-1d8a-4169-b6d6-c26bb5d749c7
  - 68766b84-eb9a-44ab-87a9-29207ec8f60e
  - 01052bcb-78d2-46ab-8aa9-6dd6497066f4
  - 0b0999a8-a16a-48c4-bb50-c9433ab95bc5
  - 6f17eb93-8047-4a24-b417-eda8b8de35f3
  - 96daf2a9-9a12-469d-826e-3ac4e3c3c1ea
  - ef017e9e-70e1-4a67-9c43-ee7dad369caa
---

We've seen how to manipulate and structure various values, but to write truly useful programs we'll need to instruct them to make decisions based on varying values. In this exercise we're going to be writing conditional statements to manipulate and structure values.

## `if` Statements

The most common way of conditionally executing statements is by writing `if` statements. `if` statements execute code within a block, only when its condition is `true`.

```javascript
const raining = true;

if (raining) {
  console.log("Don't forget your umbrella!");
}
```

In our condition, `raining` is `true`, and therefore the console log will remind us to pack an umbrella. If `raining` were `false`, the code would do nothing.

> #### Instruction
> Create a new JavaScript file to tinker with all of the code examples in this exercise.

Create a file called `conditionals.js` in your `lighthouse-js-fundamentals` directory. Every time there is a code example in this exercise, write it out into this file and run it using `node conditionals.js`. Then try changing the code a bit—update values, reorder statements, etc.—to see how the output changes. 

> #### Note
> Remember, you can create a file from the Terminal using the `touch` command, like so:
>
> ```sh
> > touch conditionals.js
> ```

Open this file in your text editor and add the following code.

```javascript
const raining = true;
const cold = false;

if (raining) {
  console.log("Don't forget your umbrella!");
}

if (cold) {
  console.log("Make sure you pick out a scarf!");
}

console.log("Now you're ready to go outside!");
```


> #### Instruction
> Execute this code using the `node conditionals.js` command to see what's outputted to the Terminal. 

Because it is raining but it is not cold, we'll be reminded to grab an umbrella before we're ready to go outside. 

> #### Instruction
> Try modifying the values of `raining` and `cold` in different combinations of `true`/`false` to see what's logged to the console.

As we've seen, we can use `if` statements to execute code conditionally and we can add multiple different `if` statements in a row. But what if we wanted to do one thing in one case and another in all other cases? 

```javascript
const cold = false;

if (cold) {
  console.log("Make sure you pick out a scarf!");
} else {
  console.log("Short sleeves are fine.");
}
```

Now, because `cold` is `false`, the `console.log` within our `if` statement will not be executed, but the code inside the `else` block will. If `cold` were `true`, the opposite would happen—that is, the program would tell us to choose a scarf to wear but it won't tell us short sleeves are OK.

Doesn't that seem like a bit of a jump, going from short sleeves straight to a scarf? Let's see if we can do better.

```javascript
const temperature = 12;

if (temperature < 0) {
  console.log("Make sure you pick out a scarf!");
} else if (temperature < 15) {
  console.log("Short sleeves won't cut it!");
} else {
  console.log("Short sleeves are fine.");
}

console.log("Now you're ready to go outside!");
```

> #### Instruction
> Think about what the result of this code will be before running it.

This looks a lot more complicated, so let's go through it step by step. Our first `if` condition is whether `temperature` is less than 0. If that condition evaluates to `true`, then JavaScript will tell us to wear a scarf before telling us to go outside. If this first `if` condition is `false`, then JavaScript will jump to the next `else if` condition, that is whether `temperature` is less than 15. In our case this is the first condition that is `true`, and so this is what was logged to our console. If, however, `temperature` was neither less than 0 nor less than 15, then the `else` block would be executed.

> #### Instruction
> Try executing it with different values of `temperature`. 

What does `temperature` have to be for the program to tell us to pick a scarf? What about for it to tell us that short sleeves are OK?

> #### Instruction
> Before continuing, commit your code.

```terminal
git add conditionals.js
git commit -m "Use conditionals to tell people about the weather" 
```

## Logical operators

`if` statements become even more powerful when we understand how to use logical operators in conjunction with them. JavaScript's logical operators are:

* `&&` - logical AND
* `||` - logical OR
* `!` - logical NOT.

We can use these to write more complex expressions. For example, if a variable `isCitizen` holds a Boolean value representing whether or not someone is a citizen, and `age` is that same person's age, we could write the following `if` statement.

```javascript
const isCitizen = true;
const age = 26;

if (isCitizen && age > 18) {
  console.log("You are eligible to vote.");
}
```

Here we're checking that both conditions, `isCitizen` and `age > 18` are `true` for the `if` statement overall to evaluate to `true`. If any of our two conditions are `false`, then the whole expression is `false`.

Let's consider another example.

```javascript
if (temperature < -40 || temperature > 40) {
  console.log("Maybe going outside isn't such a great idea…");
}
```

Here our `if` statement is `true` when `temperature` is either below -40 or above 40 degrees.

Let's take a look at one more example.

```javascript
if (!raining) {
  console.log("Leave your umbrella at home!");
}
```

We read the expression in the above example usually as "if not raining", but it's not always intuitive what "not true" or "not false" mean unless you remember that the `!` operator reverses the value of `raining`. That is, if `raining` is `true`, `!raining` is `false`. If `raining` is `false`, `!raining` is `true`.

> #### Instruction
> Before continuing, commit your code.

```terminal
git add conditionals.js
git commit -m "Add more conditional examples" 
```

> #### Instruction
> Push all of your code to github

Make sure that you've added and committed all of your files from this exercise. If you run `git status` from within the `lighthouse-js-fundamentals` directory, you should see the following message:

```terminal
nothing to commit, working tree clean
```

Once everything has been committed, push your code to github.

```terminal
git push origin master
```

## Conclusion

In this exercise we learned about the `if` statement and how to use it to check if a condition is true. We also learned about using logical operators to write more complex expressions. We can use these tools to execute code when a certain criteria is met, like only suggesting the user use an umbrella when it's raining.
