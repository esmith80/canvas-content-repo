

Let's apply the new function best practices/guidelines to recently implemented code.

## Setup

> #### Instruction
> Create a new copy of your **[Joining Concepts](/9605c1f5-90d1-4b8f-b352-30ccc0592b7f)** solution.

## Challenge

> #### Instruction
> Apply our 5 rules to the previous **[Joining Concepts](/9605c1f5-90d1-4b8f-b352-30ccc0592b7f)** activity. 

**The Rules / Guidelines:**

1. Give your functions precise verb/action based names
2. Use `camelCasedNames` (like this one)
3. Properly indent the function code
4. Functions should focus on a single task: returning a value or causing a side effect. _Break your function into additional smaller functions if you find it doing two or more things_
  * One single task could be to compute and return a value (eg: `zeroPad`)
  * Another single task could be to perform a side effect such as logging a message to the screen (eg: `printFarmInventory`)
5. It is ideal if functions try to avoid reading outer scope variables. If a function needs some information / data, then that data should instead be passed in as a parameter, making it available within the function's _inner scope_.


## Complete Assignment

> #### Instruction
> Submit your solution as a Gist.
