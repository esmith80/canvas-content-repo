---
uuid: 24f1bd66-2566-404b-9784-84d353e6567a
duration: 20
tags: focal
outcomes:
  - f45933eb-126d-4582-8fcb-1e1e2c719fcc
  - 8a5f1dbe-f745-427a-9fed-a19b12d6920d
  - 8ca39822-d6a2-47a9-986b-560d49d17e07
---

In this activity you're going to learn about the concept of scope in JavaScript. You'll see examples of how scope can help you, as well as how to avoid common pitfalls.

## Global vs Local Scopes

Let's classify two basic levels of scope: **global** and **local**.

A **globally-scoped** variable is available everywhere in the code, whereas a **locally-scoped** variable would only be available within the function in which it's defined.

To illustrate this, please examine the following code carefully:

```javascript
let myGlobalVar = "global";

const printMyVars = function() {
  let myLocalVar = "local";
  console.log("-- Inside printMyVars --");
  console.log("myLocalVar is:", myLocalVar);
  console.log("myGlobalVar is:", myGlobalVar);
}

printMyVars();

console.log('-- Outside of printMyVars now --');
console.log(myLocalVar);
```

> #### Question
> What will the above code output? If you're not sure, take a guess anyway and then run it in your node REPL or by pasting the code into a file and running it. 

????global-vs-local
```shell
-- Inside printMyVars --
myLocalVar is: local
myGlobalVar is: global
-- Outside of printMyVars now --
ReferenceError: myLocalVar is not defined
```
????

## Scoping Can Overwrite Variables

> #### Question
> What if there's both a global variable **and** a local variable defined with the same name, as shown below?
> 
> ```javascript
> let myVar = "global";
> 
> const myFunction = function() {
>   let myVar = "local";
> 
>   console.log("inside myFunction, myVar is:", myVar); 
> }
> 
> myFunction();
> 
> console.log("outside myFunction, myVar is:", myVar);  
> ```

????var-overwrite
* The local variable `myVar` takes precedence inside `myFunction`. It would evaluate to `"local"`
* However outside the function the variable `myVar` behaves as a _global variable_. It would evaluate to `"global"`
????

## Rule 5: Pass In The Data Needed

In the [Function Best Practices](/f517804a-1253-4a7a-89e8-38a8d112a1d8) reading, we introduced 4 rules when defining function.

Another good rule to follow when defining functions has to do with scoping. So here it is:

> #### Information
> **Rule 5:**  
> It is ideal if functions try to avoid reading outer scope variables. If a function needs some information / data, then that data should instead be passed in as a parameter, making it available within the function's _inner scope_. 

The example below illustrates a good vs bad example.

```javascript
const person = "Martha";

// BAD
const sayHelloBadly = function() {
  console.log(`Howdy, ${person}`);
}
sayHelloBadly(); // Works, but not ideal!

// GOOD
const sayHelloGoodly = function(name) {
  console.log(`Howdy, ${name}`);
}
sayHelloGoodly(person);
```

`sayHelloGoodly` in the example above takes in the name of the person as a _"parameter"_ (also known as an "argument"). This is considered better than than the `sayHelloBadly` implementation which accesses the outer/global `person` information directly.

> #### Question
> What is the reason for this rule? Why is it better to pass the data into the function as a parameter/argument instead of letting the function simply access that data directly? After all, the latter approach takes fewer characters to write.

????function-plop
Functions that take in parameters are more reusable, since they are less dependent on their surroundings, (i.e. their outer scope).

From the example above, we can extract the `sayHelloGoodly` function and ~~plop~~ drop it into another piece of code. We can't do that with `sayHelloBadly` because the `person` variable would have to come along for the ride.
????

## Conclusion

While there's a lot more to scoping in JavaScript, this reading introduced you to the most important takeaways that affect you presently: A functions "local" scope is different and more specific than its "outer" scope, which could be seen as a "global" scope.

While talking about scope, we also introduced a new, fifth rule for defining functions. 

Here are all 5 rules reviewed below:

1. Give your functions precise verb/action based names
2. Use `camelCasedNames` (like this one)
3. Properly indent the function code
4. Functions should focus on a single task: returning a value or causing a side effect. _Break your function into additional smaller functions if you find it doing two or more things_
  * One single task could be to compute and return a value (eg: `zeroPad`)
  * Another single task could be to perform a side effect such as logging a message to the screen (eg: `printFarmInventory`)
5. Data needed by Functions should be passed in as parameters/arguments (i.e. local scope) instead of being accessed directly
