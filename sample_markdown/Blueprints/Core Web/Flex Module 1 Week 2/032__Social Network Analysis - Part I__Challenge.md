---
uuid: e6b56678-9128-4a75-8b09-3a63c4c8eb60
duration: 120
stretch: true
allow_submissions: true
tags: focal-adv
---

This challenge encourages further practice in traversing nested objects / arrays to solve interesting real-world-like problems.

## Setup

> #### Instruction
> Create a directory inside your `objects` directory and `cd` into it.

```terminal
cd /vagrant/focal/objects
```

```terminal
mkdir social_network
```

```terminal
cd social_network
```

> #### Instruction
> Create a new JS file in there.

```terminal
touch social.js
```

## Challenge

Here is a data structure that represents a social network:

```javascript
const data = {
  f01: {
    name: "Alice",
    age: 15,
    follows: ["f02", "f03", "f04"]
  },
  f02: {
    name: "Bob",
    age: 20,
    follows: ["f05", "f06"]
  },
  f03: {
    name: "Charlie",
    age: 35,
    follows: ["f01", "f04", "f06"]
  },
  f04: {
    name: "Debbie",
    age: 40,
    follows: ["f01", "f02", "f03", "f05", "f06"]
  },
  f05: {
    name: "Elizabeth",
    age: 45,
    follows: ["f04"]
  },
  f06: {
    name: "Finn",
    age: 25,
    follows: ["f05"]
  }
};
```

Implement solutions to the following questions/problems by writing functions for each one:

> #### Instruction
> Implement a function `biggestFollower()` which _returns_ the name of the individual who follows the most people.

<div></div>

> #### Instruction
> Implement `mostPopular()` which _returns_ the name of the most popular (most followed) individual.

<div></div>

> #### Instruction
> Implement `printAll()` which _outputs_ a list of everyone and for each of them, the names of who they follow and who follows them.

<div></div>

> #### Instruction
> Implement `unrequitedFollowers()` which _returns_ a list of names for those who follow someone that doesn't follow them back.

<div></div>

> #### Instruction
> Implement some or all these remaining functions.

- Identify who has the most followers over 30
- Identify who follows the most people over 30
- List everyone and their reach (sum of # of followers and # of followers of followers)

## Tips

- You are encouraged to create some additional functions in order to avoid having very large functions that try to do everything. That said, be sure to name them well. All this may sound familiar - that's because it was covered recently as part of our [Function Best Practices](/f517804a-1253-4a7a-89e8-38a8d112a1d8) series yesterday.

## Complete Assignment

> #### Instruction
> Create a new Secret Gist with your code.

<div></div>

> #### Instruction
> Submit the URL to your new gist when marking this activity as completed.
