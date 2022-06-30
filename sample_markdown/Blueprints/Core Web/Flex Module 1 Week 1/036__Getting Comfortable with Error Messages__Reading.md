---
uuid: 85adc707-871c-48e4-9fd9-364a86efc957
duration: 20
tags: focal
outcomes:
  - 0fd3e22c-9328-403c-85a7-b56c09a96bae
  - 8f5089e6-c6f9-4408-a573-14280f151393
  - f8e77045-1ee6-44ca-a417-cddcd3d93761
---

No matter how meticulous and diligent we are when writing code, we're sure to run into errors. Odds are you've seen a few of them already – probably more often than you'd like to admit. But don't worry, debugging errors is as common as breathing or blinking and in this activity you'll learn how to read error messages and fix the bugs they're detailing.

## Reading

Let's go over three commonly encountered errors and how to deal with them, before coming up with a pattern we can follow whenever we encounter any error.

<div class="alert alert-info">
  <p>Pro tip: We strongly suggest that you run the code snippets locally as you work your way through this reading.</p>
</div>

### Syntax Errors

Consider the following code.

```javascript
var rank = "Imperator";
var name = "Furiosa";

console.log(rank name);
```

This code is trying to log `"Imperator Furiosa"` to the console. Can you see why that won't happen? Sometimes we notice our mistakes right away, but the majority of the time we probably don't until we run the code and it errors out. If we execute the above code, then our output would resemble the following.

```terminal
node syntax-error.js
/vagrant/focal/syntax-error.js:4
console.log(rank name);
                 ^^^^
SyntaxError: Unexpected identifier
    at exports.runInThisContext (vm.js:73:16)
    at Module._compile (module.js:443:25)
    at Object.Module._extensions..js (module.js:478:10)
    at Module.load (module.js:355:32)
    at Function.Module._load (module.js:310:12)
    at Function.Module.runMain (module.js:501:10)
    at startup (node.js:129:16)
    at node.js:814:3
```

These cryptic messages can be frustrating for new developers – at first glance they seem to prove the code is broken without offering much value, but that couldn't be further from the truth. They may look scary, but if we learn how to decipher them, they'll help us fix our errors quickly and efficiently.

Let's start with the first line of the error message.

```bash
/vagrant/focal/syntax-error.js:4
```

This tells us that the error happened in a file called `/vagrant/focal/syntax-error.js`, but more importantly, the `:4` on the end of the file name tells us the error was thrown by line 4 in this file. This is very useful, because it helps us narrow down our search for the error. Looking back at our code, we find that line 4 is the following.

```javascript
console.log(rank name);
```

Chances are our error is caused by something on this line. There are cases when that won't be true, which we'll see shortly, but it's not a bad assumption to start with. Let's see if the error message can give us some more clues. Its next three lines are the following.

```bash
console.log(rank name);
                 ^^^^
SyntaxError: Unexpected identifier
```

This shows us where exactly in the code the error occurred and that we're dealing with a `SyntaxError`. There seems to be something wrong with `name`, which JavaScript is calling an `Unexpected identifier`.

Because we're working out of a single file, we can be confident we've learned enough about our error to fix it (more on why in the very next section). There's no trick for the next step; here we see that what we meant to do was log `rank` then `name`, separated by a space, which means we're missing a `,`.

```javascript
console.log(rank, name);
```

Executing our code again, we notice we've fixed our error. Woohoo!

```terminal
node syntax-error.js
Imperator Furiosa
```

#### Stack Traces

The last bit of our error message, which we ignored, was the following.

```commandline
    at exports.runInThisContext (vm.js:73:16)
    at Module._compile (module.js:443:25)
    at Object.Module._extensions..js (module.js:478:10)
    at Module.load (module.js:355:32)
    at Function.Module._load (module.js:310:12)
    at Function.Module.runMain (module.js:501:10)
    at startup (node.js:129:16)
    at node.js:814:3
```

This bit is called a _stack trace_, which shows the state of our program when the error occurred. In the future, we'll discuss the more technical details of what stack traces are and how they're determined, but for now, take a look at the file names printed out in the stack trace, in the parentheses at the end of each line: `vm.js`, `module.js` and `node.js`. We don't know anything about them. They're not even our code, we didn't write them!

It's possible, as we'll see once we start working with modules, that the error didn't come from the exact file the error was thrown in (in our case `/vagrant/focal/syntax-error.js`) but that it came from one of these files. However, it's a safe bet to assume the error is not caused by someone elses (hopefully) well-tested code but by ours – it is a work in progress, after all.

### Trickier Syntax Errors

Other common mistakes we might make lead to error messages that are harder to read. Consider the following code.

```javascript
if (5 > 10) {
  console.log("Impossible!");

console.log("Phew, logical fallacies avoided.");
```

We expect this code to print `Phew, logical fallacies avoided.`, but when executed it simply explodes.

```terminal
/vagrant/focal/syntax-error2.js:6
});
 ^
SyntaxError: Unexpected token )
    at exports.runInThisContext (vm.js:73:16)
    at Module._compile (module.js:443:25)
    at Object.Module._extensions..js (module.js:478:10)
    at Module.load (module.js:355:32)
    at Function.Module._load (module.js:310:12)
    at Function.Module.runMain (module.js:501:10)
    at startup (node.js:129:16)
    at node.js:814:3
```

This error message is weird... Firstly, there's no line 6 in our code - we only wrote four lines! Second, it's pointing to a snippet of code that doesn't even exist in our four lines.

```commandline
});
 ^
```

In this case it's hard to use the information provided by the first few lines of the error message to our advantage. But the next line, `SyntaxError: Unexpected token )` is a big hint. `Unexpected token` errors occur when JavaScript expected something that wasn't there, which frequently means we're missing a parenthesis, bracket or curly brace. In our case, we're missing a `}`.

```javascript
if (5 > 10) {
  console.log("Impossible!");
}

console.log("Phew, logical fallacies avoided.");
```

### Reference Errors

Here we have some code printing out someone's first and last names.

```javascript
var firstName = "Jane";
var lastName = "Doe";

console.log(firstName, lasName);
```

But it doesn't work.

```terminal
node reference-error.js
/vagrant/focal/reference-error.js:4
console.log(firstName, lasName);
                       ^
ReferenceError: lasName is not defined
    at Object.<anonymous> (/vagrant/focal/reference-error.js:4:24)
    at Module._compile (module.js:460:26)
    at Object.Module._extensions..js (module.js:478:10)
    at Module.load (module.js:355:32)
    at Function.Module._load (module.js:310:12)
    at Function.Module.runMain (module.js:501:10)
    at startup (node.js:129:16)
    at node.js:814:3
```

Let's read our error message line by line again.

```markdown
/vagrant/focal/reference-error.js:4
```

This tells us our error is most likely coming from line 4, which is confirmed by the next couple lines of the error message.

```markdown
console.log(firstName, lasName);
                       ^
```

Something is wrong with `lasName` – node tells us that it's not defined. `ReferenceError`s are also common errors we see in day-to-day development, and they occur when we're trying to use the value of an undefined variable. In our case, this happened because we misspelled `lastName`. Let's fix it and try the code again.

```javascript
var firstName = "Jane";
var lastName = "Doe";

console.log(firstName, lastName);
```

```terminal
node reference-error.js
Jane Doe
```

Great, we fixed it!

### Type Errors

In the next code snippet, we want to convert an obnoxious all-caps string to lowercase.

```javascript
var favouriteMeal = "BREAKFAST";

console.log(favouriteMeal.toLower());
```

But, you guessed it, instead of doing what we thought we told it to do, it explodes.

```terminal
node type-error.js
/vagrant/focal/type-error.js:3
console.log(favouriteMeal.toLower());
                          ^
TypeError: undefined is not a function
    at Object.<anonymous> (/vagrant/focal/type-error.js:3:27)
    at Module._compile (module.js:460:26)
    at Object.Module._extensions..js (module.js:478:10)
    at Module.load (module.js:355:32)
    at Function.Module._load (module.js:310:12)
    at Function.Module.runMain (module.js:501:10)
    at startup (node.js:129:16)
    at node.js:814:3
```

Let's start at the top of the error message again.

```markdown
/vagrant/focal/type-error.js:3
console.log(favouriteMeal.toLower());
                          ^
```

It's telling us we broke something on line 3, and it has something to do with `toLower`. It looks fine at a glance, so let's check the error description.

```markdown
TypeError: undefined is not a function
```

That's strange. It's telling us that something is `undefined` and we tried to make a function out of it. What could this mean?

This is a tricky error to uncover as a new JavaScript developer, and it'll become a bit more understandable when we learn more about objects and their properties, but for now we can approach it by knowing what functions are. Taking a look at line 3 of our code again, we see that we're trying to call two functions, `console.log` and `favouriteMeal.toLower`. JavaScript is telling us that one of them is undefined – and it's being helpful enough to draw our attention to `toLower`. Something must be wrong here. If we did a Google search for something like `javascript convert string to lowercase` and avoided the W3schools link in favour of the Mozilla Developer Network (MDN), we would find that we simply forgot the name of the prototype function that converts a string to lowercase. We can now fix it in our code and try again.

```javascript
var favouriteMeal = "BREAKFAST";

console.log(favouriteMeal.toLowerCase());
```

```terminal
node reference-error.js
breakfast
```

### There's a pattern here

As we've seen, there's a general pattern to fixing code errors. We have to read the error message closely and carefully, then inspect the suspicious line of code for typos, syntax errors or other mistakes. In some cases we may quickly find what we did wrong, in others we may have to look for help on the Internet or with our cohort mates or mentors. While we'll never fully be able to avoid introducing errors in our code, with time and experience we'll become better and better at fixing them.
