---
uuid: fb8499c5-cc1d-4c9f-8d56-51dcc68434d0
duration: 30
type: Exercise
tags: focal
outcomes:
  - 495a4354-369b-4ba7-b29b-de3af7bcc1bb
  - 8f5089e6-c6f9-4408-a573-14280f151393
  - f8e77045-1ee6-44ca-a417-cddcd3d93761
  - b5b3d227-56c8-4c7f-9c3e-9fab65ec271e
  - 449d54d5-0084-4682-b4f7-5deafb070b19
  - 06f18181-de29-4fe4-affd-fbd5fb16bf89
  - 8360dac9-d2c2-4f13-a77b-3e39d93632ac
  - 2c3acd77-7d1a-4b74-acc2-336bb8787804
---


More frequently than introducing errors in our code, we'll write programs that don't produce correct results. These kinds of bugs are often the hardest to find – sometimes we'll spend hours hunting them down and mere seconds fixing them. In this reading, you'll discover a common strategy for finding and fixing such bugs.

> #### Instruction
> Create a new file to tinker with the `Pig Latin Translator` example.

The following is a possible solution to the recent [Pig Latin Translator](/418ef44e-24de-424b-8c2c-473a8047d738) exercise.

Create a new file in your `focal` directory on Vagrant called `pig_latin_translator.js`. Write out the following code into the file and run it in your Terminal with `pig latin is silly` as arguments.

```javascript
var originalWords = process.argv.slice(2);
var pigLatinWords = [];

for (var i = 1; i < originalWords.length; i++) {
  pigLatinWords.push(translateToPigLatin(originalWords[i]));
}

console.log(pigLatinWords.join(' '));

function translateToPigLatin(word) {
  return word.slice(2, word.length) + word[0] + "ay";
}
```

It looks like it should work – it's grabbing all the words in the argument vector that need to be translated, translates them one by one, then joins them together and prints the final result. The phrase `pig latin is silly` should be translated to `igpay atinlay siay illysay`, but when we run the code we get the following output.

```terminal
node pig-latin.js pig latin is silly
tinlay iay llysay
```

Our code is doing something, but it's certainly not correct. It's only printing three words instead of the four we expect, none of which even look correct. Let's figure out what's broken.

### Debugging Using Console Logs

Because our code is doing several different computations it can be difficult to pinpoint exactly where something is going wrong. We can look for our bugs by eliminating pieces of the code that work as expected, and a common way to do this is by using well-placed `console.log` statements.

### Breaking Down Our Code

Let's break our code into its different pieces and think about whether each piece may be the cause of our bug.

The first piece pulls out the command line arguments we want to work with and initializes an empty array where we want to keep the translated words.

```javascript
var originalWords = process.argv.slice(2);
var pigLatinWords = [];
```

It's possible we're not pulling in all the command line arguments into `originalWords`, so this snippet may be the cause of a bug.

The next piece iterates over the original words, translates each one, and pushes the result into `pigLatinWords`.

```javascript
for (var i = 1; i < originalWords.length; i++) {
  pigLatinWords.push(translateToPigLatin(originalWords[i]));
}
```

We're doing a lot of complex work here, so this snippet may also be harbouring a bug.

In the next piece we're joining the contents in `pigLatinWords`, which we expect to be strings, and outputs the final result to the console.

```javascript
console.log(pigLatinWords.join(' '));
```

It's unlikely any bugs are hiding here since this code is pretty straight-forward, but we'll keep this snippet in mind in case we don't find our mistake elsewhere.

In the last piece of code, we have a function that takes a word and applies the pig latin translation algorithm to it.

```javascript
function translateToPigLatin(word) {
  return word.slice(2, word.length) + word[0] + "ay";
}
```

None of our words were translated to pig latin correctly, so this function is also a likely culprit.

Now that we've broken our code down into snippets, we can test each one individually until we find where our code is incorrect. We can do this by checking the values of the variables we're working with in each piece.

### Testing ARGV and the Array Initialization

> #### Instruction
> Modify the `pig_latin_translator.js` file and add `console.log` statements after the first code snippet.

```javascript
var originalWords = process.argv.slice(2);
var pigLatinWords = [];

console.log("originalWords is", originalWords);
console.log("pigLatinWords is", pigLatinWords);
```

> #### Instruction
> Run the code again with `pig_latin_translator.js pig latin is silly` in your Terminal and examine the result.

If we run our code again, we'll get the following result.

```terminal
node pig-latin.js pig latin is silly
originalWords is [ 'pig', 'latin', 'is', 'silly' ]
pigLatinWords is []
tinlay iay llysay
```

Using these logs we see that the values of `originalWords` and `pigLatinWords` are exactly what they should be, which means our bug is not in this snippet. Note that the final result is still there on the last line of the output since we haven't deleted the rest of the code but merely added new console logs for debugging. Since we've confirmed there is no bug in this snippet, we can remove the `console.log` statements.

> #### Instruction
> Remove the `console.log` statements that we added previously.

### Testing the 'For Loop'

Now that the console logs have been removed from the previous test, let's look at the next piece of code.


```javascript
for (var i = 1; i < originalWords.length; i++) {
  pigLatinWords.push(translateToPigLatin(originalWords[i]));
}
```

There's a lot we can test here; are we iterating over the correct strings? Are they being translated correctly? Are we pushing them into the results array correctly? We can answer the first question by outputting the string we're iterating over at each step.

> #### Instruction
> Modify the `pig_latin_translator.js` file and add a `console.log` statement in the for loop of the second snippet.

```javascript
for (var i = 1; i < originalWords.length; i++) {
  console.log(originalWords[i]);
  pigLatinWords.push(translateToPigLatin(originalWords[i]));
}
```

> #### Instruction
> Run the code again with `pig_latin_translator.js pig latin is silly` in your Terminal and examine the result.

Running this code, we get the following output.

```terminal
node pig-latin.js pig latin is silly
latin
is
silly
tinlay iay llysay
```

Looks like we've found something wrong! We expected to see all the words in `originalWords` in the output, but the first is missing (`pig`). This means we're starting our iteration with the second element. By examining our code, we can see we forgot that arrays are indexed starting with 0. Let's fix the code.

> #### Instruction
> Fix the code in `pig_latin_translator.js` replacing `var i = 1` in the `for` statement with the correct `var i = 0`.

```javascript
for (var i = 0; i < originalWords.length; i++) {
  console.log(originalWords[i]);
  pigLatinWords.push(translateToPigLatin(originalWords[i]));
}
```

> #### Instruction
> Run the code again with `pig_latin_translator.js pig latin is silly` in your Terminal and examine the result.

Now our result is the following.

```terminal
node pig-latin.js pig latin is silly
pig
latin
is
silly
gpay tinlay iay llysay
```

### Testing the Translation Function

Still within our loop, let's check whether each individual word gets translated correctly before being pushed into `pigLatinWords`. This always seemed suspect, since none of the words translated ever looked quite right.

> #### Instruction
> Modify the `pig_latin_translator.js` file and change the `console.log` statement.

```javascript
for (var i = 0; i < originalWords.length; i++) {
  console.log(translateToPigLatin(originalWords[i]));
  pigLatinWords.push(translateToPigLatin(originalWords[i]));
}
```

> #### Instruction
> Run the code again with `pig_latin_translator.js pig latin is silly` in your Terminal and examine the result.

```terminal
node pig-latin.js pig latin is silly
gpay
tinlay
iay
llysay
gpay tinlay iay llysay
```

In this last output we see each individual word is translated incorrectly, therefore there must be a bug in `translateToPigLatin`.

There are a few pieces to the logic of the function, so let's test them all.

> #### Instruction
> Modify the `pig_latin_translator.js` file and add some `console.log` statements in the `translateToPigLatin` function.

```javascript
function translateToPigLatin(word) {
  console.log("Word", word);
  console.log("First letter", word[0]);
  console.log("Rest of word", word.slice(2, word.length));
  return word.slice(2, word.length) + word[0] + "ay";
}
```

Here we're testing the values of `word`, `word[0]` and `word.slice(2, word.length)` when the function is called, hoping to find what's broken. Running the code we get the following.

> #### Instruction
> Run the code again with `pig_latin_translator.js pig latin is silly` in your Terminal and examine the result.

```terminal
node pig-latin.js pig latin is silly
Word pig
First letter p
Rest of word g
Word latin
First letter l
Rest of word tin
Word is
First letter i
Rest of word
Word silly
First letter s
Rest of word lly
gpay tinlay iay llysay
```

This output, of all the values we're working with at each invocation of `translateToPigLatin`, is a little tough to decipher. But if we go through it carefully, line by line, we'll notice what's incorrect: the calculation of the rest of the word. We're missing the first letter in the rest of the word (the `i` in `ig` from `pig`, the `a` in `atin` from `latin`, and so on). This means our `slice` is incorrect. Let's fix the starting index from `2` to `1` then test again.

> #### Instruction
> Fix the code in `pig_latin_translator.js` replacing `slice(2, word.length)` with `slice(1, word.length)`

```javascript
function translateToPigLatin(word) {
  return word.slice(1, word.length) + word[0] + "ay";
}
```

> #### Instruction
> Run the code again with `pig_latin_translator.js pig latin is silly` in your Terminal and examine the result.

```terminal
node pig-latin.js pig latin is silly
igpay atinlay siay illysay
```

That matches our expected output – hurray! We fixed all our bugs!

## Conclusion

Complicated programs take many steps to convert some input into a desired output, therefore many debugging strategies involve breaking programs down into snippets that can be tested atomically. (As we'll soon see, this exact idea is also the foundation of automated testing). In this reading we saw how we can achieve this by inspecting the values in our code at each step using console logs.

However, we didn't just pepper our code with random console logs expecting to find the bugs. Instead, we inspected the values we thought may be incorrect at each step in the program's execution. If you're familiar with the scientific method, it makes for a great analogy: like in empirical science, we started with an observation – our code produced incorrect output. We then came up with various hypotheses or guesses as to what could have caused the faulty behaviour. Our console logs are then the experiments, carefully designed to test each potential cause, narrowing the search until we discovered every bug. Only having identified the incorrect behaviour did we examine our code for mistakes. Seeing the mistakes themselves, even once we know exactly which bit of code is causing them, takes patience and practice. In the next activity we'll be getting our hands dirty doing just that.
