---
uuid: f7272914-fb65-4e04-8cd8-aea32318f2f1
duration: 30
allow_submissions: true
tags: focal
outcomes:
  - 8599cc9a-82f8-4d7f-850f-0b804d5735bd
  - 23e021ea-c827-45f3-8077-fca3e947116d
  - 2a514ea4-0516-4124-9dba-de7cb633ba92
  - 98fbbb11-f5df-48e9-9e16-7ce9f75a0eb9
  - 5f66ee62-ea91-4697-917e-4abb014554d9
  - 5128eee5-370e-494c-805a-e17500ba8032
  - c665cbb9-b722-4a95-b3d3-90e8935250a2
  - 6e14b073-0009-41e7-8282-17abbb7a7138
---

It's time to build a small command line application and put our new-found knowledge about `process.argv` to the test!


In this exercise we want to build a simple calculator that can sum two numbers.

## Summing Two Numbers

Summing up two numbers isn't anything new to us.

```javascript
40 + 2
```

There. I just did it _(and in doing so found the answer to [the ultimate question of life, the universe and everything](https://www.google.com/search?q=answer+to+the+ultimate+question+of+life%2C+the+universe+and+everything&oq=answer+to+the+ultimate+question+of+life%2C+the+universe+and+everything))_!

Anyway, this exercise isn't really about summing up two numbers. It's about letting the user choose which numbers to sum. It will be created as a command line application. This means that it will be run from the command line and receive arguments from there.

```terminal
> node sum.js 10 25
35
```

In the above command, the arguments passed to `sum.js` are `10` and `25`, and the result of adding them together is `35`.

## Setup

> #### Instruction
> Create a file `sum.js` in your `focal` folder.

In Vagrant, navigate back to `/vagrant/focal` and make a new subdirectory for this exercise. Create a new file in this directory called `sum.js`.

```terminal
cd /vagrant/focal
```

```terminal
touch sum.js
```

## Command Line Arguments

Let's get to work!

> #### Instruction
> Add some starter code to help you see all the command line arguments.

Assign the command line arguments to a variable and then log them:

```javascript
const args = process.argv;
console.log(args);
```

> #### Instruction
> Execute this file in the Terminal, making sure to pass a few arguments to it.

Here is an example run including its output:

```terminal
> node sum.js 10 25
[ 'node',
  '/vagrant/focal/sum.js',
  '10',
  '25' ]
```

> #### Information
> Our previous walkthrough titled [Command Line Args](/c997336c-2105-4241-9437-b4e21b602aa7) goes deeper into discussing command line arguments.

As we have seen earlier, `process.argv` is an array containing all the command line arguments used to execute our code, including the interpreter `node` and the file we executed, in this case `/vagrant/focal/sum.js`. What we're interested in working with, however, are the arguments to `sum.js`, so the third and fourth items in `process.argv`.

### Read Only The Important Arguments

> #### Information
> **Hint:** The array [`slice`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice) method can be used on an array to remove some of initial elements that we do not need.

<div></div>

> #### Instruction
> Change the code so that the first two elements from the array (which we do not need) are not printed out.

Our adjusted output should now look similar to this:

```terminal
> node sum.js 10 25
[ '10',
  '25' ]
```

### Add The Two Numbers

> #### Instruction
> Modify your code so that it prints out the result correctly.

Given the following arguments, your code should output the following results:

```terminal
> node sum.js 4 5
9
```

```terminal
> node sum.js 5 -12
-7
```

Your code should extract the two remaining items in `process.argv`, add them together, then log the result to the console.

> #### Information
> Items in an array can be indexed using square brackets notation, and array indexes start at 0. For example, to get the second element in the array we would use `process.argv[1]`.

<div></div>

> #### Warning
> You'll find that the result of adding the two "numbers" passed to your code as command line arguments is not what you expect. This is because all command line arguments are strings and the `+` operator concatenates them. To calculate a sum, you'll want to [convert the strings to numbers first](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number#Convert_numeric_strings_to_numbers).


### Don't Forget Functions

Your code may need some refactoring...

> #### Question
> While you can easily implement this program without the use of any functions, you can do better than that! What one function could you definitely create to help clean it up, and what should it be responsible for?

????one-more-function
We could create a function `sum` that takes in two numbers and returns their sum. It should `return` the sum and therefore _not_ have any side effects.
????

## Don't Forget Linting!

> #### Instruction
> Run our linter against the `sum.js` file, and correct ALL warnings and errors.

```sh
eslint sum.js
```

## Complete Assignment

> #### Instruction
> Create a new secret gist with your solution.

Browse to [gist.github.com](https://gist.github.com/) and create a new gist by copy-and-pasting your code into the form, naming the gist and the file appropriately, and clicking `Create secret gist`.

> #### Instruction
> Submit your work.


Finally, mark this activity as completed and please copy/paste the _entire_ gist URL into the text field.
