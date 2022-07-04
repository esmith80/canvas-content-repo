As mentioned in the previous (Prime number) challenge, it would be nice to be able to see a series of success / failure messages printed to the console, letting us know if our functions are behaving as expected.

In this walkthrough we'll explore a built-in way and implement our own custom `assertEqual` function to help us test our code.

<!-- TODO: Quote Definition of assertion in terms of math/logic/programming. Perhaps wikipedia? Problem is that it's not a very easy-to-read description there. -->

<!-- TODO: Funny comic or illustration of an assertion -->

## Setup 

> #### Instruction 
> First, change directories into your `lotide` project folder, if you're not there already (you can use `pwd` to view your current directory path).

```shell
cd /vagrant/lotide
```

> #### Instruction
> Create `assertEqual.js` in your `lotide` folder. 

```shell
touch assertEqual.js
```

> #### Instruction 
> Open the `lotide` folder in your editor.

Be sure to open up the entire folder in VSCode and not just the new file we've created.

## Trying Out The built-in `console.assert`

JavaScript has a built-in `console.assert` function. We won't be using it much. That said, let's play with it to get familiar with what _assert_ means and does anyway.

> #### Instruction 
> Read the [`console.assert` docs](https://developer.mozilla.org/en-US/docs/Web/API/console/assert) on MDN.

"Read" may be a strong word. You don't have to read the whole MDN page from top to bottom. Once you think you understand what it does, give it a go!

> #### Instruction 
> Try out `console.assert` in the node REPL.

We can open the `node` REPL/shell from anywhere in your Vagrant machine. Location doesn't matter.

```shell
node
```

```javascript
console.assert(1 === 1); // => nothing happens because true
```

```javascript
console.assert(1 === 1.1); // => prints out "Assertion failed" to the terminal
```

We could use this to test out a simple function.

```javascript
// FUNCTION IMPLEMENTATION
const sum = function(a, b) { 
  return a + b;
}

// TEST CODE
console.assert(sum(1, 2) === 3);
console.assert(sum(1, 20) === 3); // bad / incorrect assertion, and we see it fail!
```

This would allow us to catch bugs in our code. Let's say we had a buggy `sum` function instead: 

```javascript
// FUNCTION IMPLEMENTATION
const sumBuggy = function(a, b) { 
  return a * b;
}

// TEST CODE
console.assert(sumBuggy(1, 2) === 3); // fails, because bug!
```

In the scenario above, our _TEST CODE_ exists to let us determine if we have failed assertions, and we do! Something to investigate. This is the value proposition that an `assert` function provides.

> #### Information
> The `console.assert` function prints to the console for us, the developer, when an expected outcome is not met (fails) so that we can look into _why_.

However, we could do better by creating our own assertion function to use going forward. It's also a good exercise to flex some of our fundamental JS muscles!

## Setting Up Our Own `assertEqual`

> #### Instruction 
> Open the `assertEqual.js` file.

Using the explorer in VSCode, open your newly created and empty `assertEqual.js` file. This is where we'll implement our custom assert function which will also log a message to console.

> #### Instruction 
> Define the `assertEqual` function and ensure that it can be called.

```javascript
// FUNCTION IMPLEMENTATION
const assertEqual = function(actual, expected) {

};

// TEST CODE
assertEqual("Lighthouse Labs", "Bootcamp");
assertEqual(1, 1);
```

> #### Information
> Notice how we're not writing out the entire function prior to calling/invoking the function. Working step by step (incrementally) in this way is always a good idea.

<div></div>

> #### Question 
> Before you run the code written thus far in `assertEqual.js`, ask yourself: _What is the expected output and why?_ 
>
> ...
>
> So?

????expected-output
Did you say that you expected to see no output at all? Correct! 

Give it a go:

```shell
node assertEqual.js
```

Why? Because we call the function but the function itself does nothing? Sure, but more specifically because we are not printing/logging anything to the console anywhere.
????

## Implementing `assertEqual`

With its skeleton in place, it's time to implement this function. 

> #### Instruction
> Make the function compare the two values it takes in and print out a message telling us if they match or not. 

* If the values match, it should print (`console.log`) the following: `Assertion Passed: [actual] === [expected]` (but with the values filled in)
* Otherwise it should print (`console.log`) the following: `Assertion Failed: [actual] !== [expected]` (but with the values filled in)

Some examples:

```shell
Assertion Failed: Lighthouse Labs !== Bootcamp
Assertion Passed: 1 === 1
```

> #### Instruction
> Write out a few calls to it and confirm that it is indeed working as expected.

Test at least the following scenarios:

- Comparing identical strings
- Comparing non-identical strings
- Comparing identical numbers
- Comparing non-identical numbers

## Emojis Can _Actually_ Help Here!

It's nice that our function is working as expected, but one really has to _read_ the message each time to distinguish "Pass" vs "Fail" messages. 

Wouldn't it be nice to have an output that our brain can process quickly, without too much reading?

Hmm. Something like this, perhaps! 

```shell
🛑🛑🛑 Assertion Failed: Lighthouse Labs !== Bootcamp
✅✅✅ Assertion Passed: 1 === 1
```

Whoa! Emojis can be used to add visuals + colour to the assertion output! _Brilliant idea Lighthouse Labs!_ (you think to yourself)

> #### Information
> Our assertion function `assertEqual` is a better fit for our needs than `console.assert`. Ours prints out a colourful and therefore easy to read message in both success and failure scenarios.

<div></div>

> #### Instruction
> Add emojis to the strings that you `console.log` in `assertEqual`.

Modern Operating Systems provide you with an emoji keyboard feature. Not sure how? Google it (or ask a [Millennial](https://www.upf.edu/documents/3966940/6839730/Working+Paper_Emoji_Substantive.pdf/bbbf386b-864f-3116-b8fb-dece14760a45) or [Gen Z](https://www.newswhip.com/2017/12/emoji-on-social/)).

Use whatever emojis you want, but maybe don't go overboard, eh?

## Lint Our Code

> #### Instruction
> If you haven't already done so, run ESLint and fix any errors and warnings.

```sh
eslint assertEqual.js
```

## Conclusion

In this walkthrough we explored `console.assert` and found it to be good but not colourful and verbose enough. 

With a desire to have a function that can tell us when it passes and in style, we crafted our own handy assertion function which compares two values and prints out a colourful successful or failure message. 

We can start using this to test out code that we write in the future.

## Complete Assignment

Once you've implemented the function and are satisfied with your various test cases, it's time to push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.

