---
uuid: fabdcf66-c425-440b-8d2c-327e4b1606d5
allow_submissions: true
duration: 45
name: "Debug I - Palindrome"
type: Problem
stretch: true
tags: focal-adv
outcomes:
  - 2c3acd77-7d1a-4b74-acc2-336bb8787804
---

In this activity we're going to practice your debugging skills by fixing an incorrect program.

The incorrect program to fix is a _Palindrome Checker_. 

> #### Information
> A palindrome is a word or phrase that is exactly the same if read backwards (ignoring spaces). For example, `racecar` and `No lemon no melon` are both palindromes.

## Setup

> #### Instruction
> Fork and clone [this gist](https://gist.github.com/rafd/9aa03c2fcf311c404780729daf55d85b) to your computer. 

## Challenge

The code in the gist defines a function called `isPalindrome`, that outputs `true` if a string passed to it is a palindrome or `false` otherwise. There is also some test driver code that asserts the output of `isPalindrome` to match either `true` or `false`.

> #### Instruction
> Run the code in `palindrome.js`.

Executing the code with node, you'll notice that most of these assertions fail. 

> #### Instruction
> Understand what the `isPalindrome` function is attempting to do, and how.

Figure out what the expected result should be, then read the code to understand how it's trying to compute it. 

> #### Instruction
> Debug the issue in the `isPalindrome` function.

Use the strategies from the [Coercion and Truthy/Falsey](/5b4da247-6c43-48fc-b04c-2885791b0654) activity to find the mistake and fix it.

### Tips

* It may be useful to see what the `isPalindrome` function is actually returning each time
* Without understanding the intended logic for a function or program, it would be very difficult to debug it. Spend some time understanding the logic for `isPalindrome` and how it is _trying_ to work

## Bonus Challenge

> #### Instruction
> **Bonus:** There's another issue to debug in the `isPalindrome` function. You may attempt to solve this stretch bug by uncommenting the bonus assertions at the bottom. 

Keep in mind that this bug is unrelated. Please don't spend too much time on this part. Keep it to 15 minutes.

## Complete Assignment

> #### Instruction 
> Commit and push the updated file within your gist.

Make sure you commit and push your changes to your forked gist, verify that it's up there on GitHub and then submit the URL to it.
