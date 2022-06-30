---
uuid: 0de89a33-5a03-42b5-a308-f6fd8c800662
duration: 45
allow_submissions: true
stretch: true
tags: focal-adv
outcomes:
  - 46bd3b64-e729-4363-b532-ce8b8af9ea93
  - 85afb2f8-283b-48e4-bef7-99756ddfe6a6
  - 98fbbb11-f5df-48e9-9e16-7ce9f75a0eb9
  - d10564b1-acee-4e8a-8d56-f042e90aa652
---

In this activity we'll practice defining algorithms, working with command line arguments, and writing loops and conditional statements. We'll do this by writing a program that takes a single command line argument – a simple password – and obfuscates it by following a few rules.

## Setup

> #### Instruction
> Create a `password.js` file inside our `focal` directory.

We will create a secret gist for this file at the end, so there is no need to commit or push it anywhere.

## Challenge

> #### Instruction
> Make `password.js` take in a single string as a [command line argument](/c997336c-2105-4241-9437-b4e21b602aa7) and print out an obfuscated version of that password, using the rules defined below. 

Our program should define a function named `obfuscate`. This function should take a string as an argument and obfuscate it by applying the following rules:

- Every `"a"` in the string should be replaced with a `"4"`.
- Every `"e"` in the string should be replaced with a `"3"`.
- Every `"o"` (oh) in the string should be replaced with a `"0"` (zero).
- Every `"l"` (el) in the string should be replaced with a `"1"` (one).

> #### Information
> _Are these obfuscated passwords any good?_
> 
> Not really! To truly minimize the risk of our accounts being hacked, we should use [long passwords](http://blog.codinghorror.com/passwords-vs-pass-phrases/) and [use unique ones for every account](http://xkcd.com/792/). Password management software such as [1Password](https://agilebits.com/onepassword), [Lastpass](https://lastpass.com/) or [KeePass](http://keepass.info/) can be a big help! 

### Expected Output

The program should log to the console the final obfuscated password returned by our `obfuscate` function. As examples, consider the following few runs of the program and their results.

```terminal
node password.js password
p4ssw0rd
```

```terminal
node password.js abracadabra
4br4c4d4br4
```

```terminal
node password.js audaciously
4ud4ci0us1y
```

## Tips

1. Remember to tackle the problem in pieces. Define a solution first, then implement it one piece at a time. 
2. The `obfuscate` function should **not** read directly from `process.argv`. Another piece of code outside that function can perform that task. It's important to understand why this is considered better practice. If you're unclear about the reasoning, ask your other peers or a mentor!
3. The solution should use a loop to go through the characters one at a time. Do **not** use any built-in functions like `String.prototype.replace` that do all the work of scanning through the string for you.

## Complete Assignment

> #### Instruction
> Submit the solution as a Gist.

When you've tested your code with a few different inputs and confirmed it works as described, submit it as a gist!
