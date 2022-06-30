---
uuid: 656af239-0e82-463e-99bb-4c1da925d46c
name: 'Declaring and Calling Functions'
type: 'Assignment'
duration: 60
outcomes:
# eljs - functions
  - 22dd369d-ce6b-4960-a6ec-50938141abbd
  - e3abe961-dc46-4246-873a-e63675e378ab
  - 6cc8ab21-e52c-4c5d-bfc8-d6c3266d2815
  - f4c7d861-dc69-4fd8-a6d6-e8da51b852a3
# eljs - scope
  - f45933eb-126d-4582-8fcb-1e1e2c719fcc
  - 8a5f1dbe-f745-427a-9fed-a19b12d6920d
# exercises
# git
  - 9398f7ad-be20-435e-a211-16208ebe3016
  - c3fdf1ec-e5d9-4667-936a-cade167eea15
  - 11574feb-e813-4e6c-8047-39da5f710f65
# js
  - 2a514ea4-0516-4124-9dba-de7cb633ba92
  - d47ad1d7-9a6d-4b3d-9652-0039391609f9
  - 02cbdb28-5006-49d9-888b-8a9d740a942b
  - 6d04fb30-9184-44f4-a4d1-51998d1bdb5d
  - c665cbb9-b722-4a95-b3d3-90e8935250a2
---


We could write entire programs that only manipulate values, line by line, but sooner or later we would start to repeat ourselves. Maybe we want to greet various friends or need to calculate whether many numbers are even. Our instinct would be to simply duplicate code. 

```javascript
console.log("Hello, Caliban");
console.log("Hello, Miranda");
console.log("Hello, Ferdinand");
```

This is already repetitive, annoying even. Worse, it could quickly become difficult to manage. So how do we avoid this? By using functions. In this exercise, we're going to practice writing and using functions so we can avoid duplicating code.

## `sayHello` function

Now that we have a theoretical idea of what functions are and how they're used, let's practice writing and calling our own.

> #### Instruction
> Create a new file to tinker with the code examples.

Create a new file in your `lighthouse-js-fundamentals` directory on Vagrant called `hello.js`. Every time there is a code example in this exercise, write it out into a JavaScript file and run it. Then try changing the code a bit—update values, reorder statements, etc.—to see how the output changes. 

```javascript
const sayHello  = function () {
  console.log("Hello, world");
}

sayHello();
```

> #### Instruction
> Run the code with `node hello.js` in terminal

We should now see the output of the code in `hello.js`, namely `Hello, world` in the Terminal. But how does it work? Well, we've declared a function named `sayHello` that outputs a string to the console – that's what the `console.log` function does—and then we called, or invoked, it using the parentheses notation `sayHello()`.

We can call `sayHello()` as many times as we want to, and while we don't have to write the whole `console.log` expression every time, it's still not a very useful function. So let's see if we can improve it. 

```javascript
const sayHello  = function (name) {
  console.log("Hello, " + name);
}
```

Now we've got a function taking a value as its input, which we've referred to as `name` and which we concatenate to the string `"Hello, "` before we output the whole result. The input to the function is called a **parameter**, in our case we've called it `name`. We can think of a function's parameters as variables that are accessible and can be used only within the function, and whose values vary and are set when we call the function. 

```javascript
sayHello("Caliban");
sayHello("Miranda");
sayHello("Ferdinand");
```

We've now called our `sayHello` function three times. The first time, the value of `name` was set to `"Caliban"`, the second time to `"Miranda"` and the third time to `"Ferdinand"`. As we can see, we've created a bit of functionality that can greet anyone. This is a very powerful tool—instead of having to repeat our code for every time we want to greet a new person, we can simply pass along their name to our `sayHello` function and the function takes care of the rest for us.

`sayHello` is one of two main varieties of functions: 

* One that produces a side effect, as in it *does* something. 
* One that produces a result, as in it *calculates and returns* a value we can use in further code. 

One such example of the second type of function could be for determining whether a number is even. Let's do that next.

Before we move on to the next file, let's commit `hello.js`.


> #### Instruction
> Before continuing, commit `hello.js`.

## `return` & `console.log`

Before we get started it's important to understand that using `return` in a function is different from using `console.log`. 

**`console.log`:**

```javascript
const sayHelloToConsole  = function (name) {
  console.log("Hello, " + name);
}
sayHelloToConsole('John'); 
```

**`return`:**

```js
const returnSayHello  = function (name) {
  return "Hello, " + name;
}
const greeting = returnSayHello('John');
```

The first function immediately outputs 'Hello, John' to the console. The second `returns` the string 'Hello, John' to a variable and nothing will get output to the console.

A `console.log` statement will result in some content being displayed in the console. A `return` statement will not output anything to the console. However, when a function returns a value, we can still `console.log` it later:

```js
const returnSayHello  = function (name) {
  return "Hello, " + name;
}
const greeting = returnSayHello('John');
console.log(greeting);
```

Now this will have the same result as calling the first function.

For the rest of this exercise, we will be using functions that return a value. This means that we will have to `console.log` our values outside of the function.

## `isEven` function

> #### Instruction
> Create a new file called file called `even.js` for the following code examples.

```javascript
const isEven  = function (num) {
  return num % 2 === 0;
}
```

`isEven` takes as its parameter a number and returns a Boolean value representing whether or not the number is even.

<aside>
<h3>Why is it even?</h3>
<p>How do we know <code>isEven</code> returns whether <code>num</code> is even or not?</p>
<p>Open up the node REPL in your Terminal using the <code>node</code> command, and try the following expressions.</p>
<pre><code class="language-javascript">10 % 2 === 0;
11 % 2 === 0;
</code></pre>
<p>The first expression, <code>10 % 2 === 0</code> will evaluate to <code>true</code>, the second to <code>false</code>. This is because when we divide 10 by 2, it produces no remainder so <code>10 % 2</code> will be equal to 0. When we divide 11 by 2, it produces a remainder of 1, which is not equal to 0.</p>
</aside>

In the above `isEven` function, `num` can vary and therefore so will the result of `num % 2 === 0`. If `num` is even, the result of `num % 2` is `0` and so the whole expression evaluates to `true`. The opposite happens when `num` is odd.

The final missing piece is the `return` statement. After evaluating the expression to `true` or `false`, the function returns this value where it's called. 

```javascript
const isEven  = function (num) {
  return num % 2 === 0;
}

const tenIsEven = isEven(10);
const elevenIsEven = isEven(11);

console.log(tenIsEven);
console.log(elevenIsEven);
```

The variable `tenIsEven` is set to the value returned by `isEven(10)`, namely `true`. `elevenIsEven` is set to the value returned by `isEven(11)`, namely `false`. 

We can simplify our above code a little by learning that we don't need to set our function return values to new variables before doing something with them–we can use them directly where we need them. 

```javascript
const isEven  = function (num) {
  return num % 2 === 0;
}

console.log(isEven(10));
console.log(isEven(11));
```

This will produce the same result as our previous example. There are a couple things to understand here. First, `console.log` is itself a function–only it's pre-defined by JavaScript and we can use it without having to declare it ourselves. Second, we can pass the result returned by `isEven` directly to `console.log`, which takes that value and outputs it to Terminal.

> #### Instruction
> Before continuing, commit `even.js`.

<div></div>

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

In this exercise, we learned how to use functions to reduce duplication in code. We also looked at the difference between calling `console.log` within our functions and calling `return` within our functions and `console.log`ing the return value. 
