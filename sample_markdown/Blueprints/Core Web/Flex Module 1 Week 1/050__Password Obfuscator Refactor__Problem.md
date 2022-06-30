---
uuid: bf1f7de0-d308-4a4b-bce3-6477886e307d
duration: 75
stretch: true
allow_submissions: true
name: Function Best Practices - Refactor II
tags: focal-adv
outcomes:
  - e1f6abd5-76ce-494b-bdea-75cbae641d0f
  - fade5d0c-2d20-4c39-9d29-f165e27964e7
  - e571422a-4423-491e-a81c-178145a0c5ec
---

Let's apply the new function best practices/guidelines to recently implemented code.

## Setup

> #### Instruction
> Create a new copy of your **[Password Obfuscator](/0de89a33-5a03-42b5-a308-f6fd8c800662)** solution.

## Challenge

> #### Instruction
> Apply our 5 rules to the previous **[Password Obfuscator](/0de89a33-5a03-42b5-a308-f6fd8c800662)** activity. 

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
> Commit and push your changes. 

<div></div>

> #### Instruction
> Submit the URL to your new code when marking this activity as completed.
