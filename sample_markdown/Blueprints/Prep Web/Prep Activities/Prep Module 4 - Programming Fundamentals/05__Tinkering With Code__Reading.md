---
uuid: d05a666c-f539-4c15-8393-c546fef14166
name: 'Tinkering with Code'
type: 'Assignment'
duration: 90
---

When we first learn how to ride a bike, we don't read a book on how to do it, or follow an online tutorial. When we first learn how to ride a bike, we do it by getting on the bike and practicing. 

In some ways, learning to program is similar to learning how to ride a bike. We cannot learn how to program just by reading about it or following some tutorials. We learn to program by practicing. 

## Tinkering With Code Examples

Throughout this entire section, and during Bootcamp, there are going to be many snippets of example code in the exercises. It's very important that we don't _just read_ the code examples, but actually type the examples out, run the code, modify and play with the code. It's very important that we **practice**.

For example, while reading about math operators, the exercise might have a block of code like this:

```js
5 + (5 * 5); // 30
```

It can be tempting to just read this information, think about it for a moment, and then accept it; but we should always type out the code and experiment with it ourselves. What would happen if we removed the parenthesis? Changed the numbers? Changed the operators?

## Node REPL

The easiest way to start tinkering around with short snippets of code like this, is by using the node [REPL](/d7c8acd6-a680-4cf0-bb20-d995eb50767e).

> #### Instruction
> Open up the node REPL.

* SSH into your Vagrant VM, using the instructions from previous modules.
* Fire up the node.js REPL by typing the following in the terminal.

```terminal
node
```

> #### Instruction
> Type in the following lines of code 1-by-1, each followed by an <kbd>Enter</kbd>.

```js
5 * 5
5 + 5
5 + (5 * 5)
(5 + 5) * 5
```

Feel free to experiment more with this, trying different numbers and operators.

> #### Note
> We can quit the node prompt/REPL using <kbd>Ctrl + d</kbd>.

Remember that every time you see a code example, whether it's in the prep course or somewhere else, you can open up your node REPL to tinker with that code.

## Tinkering With Files

Sometimes it can be nice to tinker around with code inside a JavaScript file. This is especially helpful when we're tinkering with larger code snippets. 

There is no _special_ way of creating a file to tinker around with, we just create a `.js` file, write some JavaScript and run it. Then we can change the code and run it again. This is similar to the REPL, but can be a little bit more time consuming. 

> #### Instruction
> Create a new tinkering file.

* Create a new file in your `lighthouse-js-fundamentals` directory on Vagrant called `tinkering.js`.
* Type in the following code 1-by-1 into that file.

```js
function multiply(a, b) {
  return a * b;
}

const result = multiply(2, 4);

console.log(result);
```

> #### Note
> Don't worry about the syntax here, we will cover all of the details about functions later on in this section. For now, just type out the code so that we can run it.

<div></div>

> #### Instruction
> Execute this file with node.

* SSH into your Vagrant VM.
* Navigate to your `lighthouse-js-fundamentals` directory using `cd`.
* Run `node tinkering.js`

We should see `8` printed out to the terminal.

Feel free to experiment more with this, trying different numbers and operators.

## Conclusion

Whenever we see a code example in an exercise, we should type out the code for ourselves and tinker with it. We can do this in the node REPL, or by creating a tinkering JavaScript file. It doesn't matter how we tinker with the code, the important thing is that we experiment and tinker. 

Tinkering like this is how developers practice and understand a language. No one ever learned to ride a bike by reading about it, we have to actually get on the bike to do that. Coding is similar, we can't just read about coding, we have to actually practice writing code.
