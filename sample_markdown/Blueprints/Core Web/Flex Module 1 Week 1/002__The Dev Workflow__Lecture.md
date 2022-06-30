---
uuid: 15cc1ee2-bac8-4c2f-8aa8-fa534c58f82f
duration: 120
---

Welcome to your first technical Lecture at Lighthouse! 

## Topics

- Curriculum overview
- Writing code incrementally
- Problem solving tips
- Basic git workflow (init -> add -> commit -> push)

## Details

How to work iteratively and incrementally; how to debug; how to manually test your code; writing clean code.

These concepts will be covered by the instructor as they work with the class to live code a solution to a small problem. The goal is not _"what is the solution?"_, but rather _"how do we build towards the solution in an ideal manner?"_. The focus is on workflow and a developer's approach.

> #### Information
> Before we get into the technical stuff, the instructor will spend a few minutes talking about our curriculum (curriculum outline, expectations and evaluation).

## Teacher Notes

[Slides](https://docs.google.com/presentation/d/1_NWYcPhS6Q3hQKXnh09Eufl7hs45yBLbUBZhWyvqeSc/edit#slide=id.g7bcd5acb3_00)

First go over web-curriculum specific things.

**Mention to the students that when it comes to live coding, they should not be trying to replicate the same code on their screen and instead be paying attention and collaborating/questioning the code that's being written on screen.**

**This discussion is meant to facilitate a deeper learning of the coding concepts, where as a simple "repeat after me" lecture would not have students discussing the concepts presented in depth.** 

Use the (given) live-coding exercise so that there is a mission. However, the goal of the lecture is not to just solve the problem. It's to use it as a hook for the students. As you (slowly!) work through the problem, your focus is not on the algorithm or even on JavaScript syntax (only).

The main goal is to focus on **Approach**:

> How to work iteratively and incrementally. How to debug. How to manually test your code. Writing clean code.

#### Live coding

> #### Warning
> Please use the LHL Vagrant machine for W1 lectures, since students need to see this new workflow in action, and the conversations and any gotchas that come with it.

<div></div>

> #### Instruction
> Write a node program that takes in an unlimited number of command line arguments, goes through each and prints out the sum of them. If any argument is not a whole number, skip it. Do support negative numbers though.

**Important**: This is their first tech lecture and many students will tend to try and follow along. Before you start, mention / remind that they should not try and copy the code and instead make notes of the important points that you are going to make, and write action items to google/read later. Eg if I talk about a feature or function like Array slice, write down "Research: array slice, for process.argv.".

#### Approach

- Refactor your solution into functions as you go vs just at the end (recommendation)
  - When creating functions, talk about the importance of separating I/O from business logic, and that a function should ideally do one or the other, but not both.
- Write in small (smallest possible executable program) steps
  - Optional: Show them an error-driven approach
- Don't get hung up on _"how does ARGV work?"_ type questions, which is not the focus of the lecture. Tell them this but also try to give them a summary and explain that lecture isn't the best way to learn what ARGV is. Reading about, playing with, and speaking with mentors about ARGV is the best way.
- Run eslint, even if you have your editor setup with it (don't forget to use our file)! If students ask about how to setup their editor with linter, mention that this is something that is covered later (and requires a bit of setup) and that we intentionally don't provide that ability yet.

#### Things To Emphasize

Make sure you cover and even "run into" some of these important points as you go through the live coding exercise.

- Intending code as you go
- Avoid copy/pasting anything
- Errors are your friend, but you have to try and understand what they are saying and not guess
- Typical week1 research path:
  - Google for a question (how do you phrase it?)
  - StackOverflow is often a first hit. It shows an approach, but how do we navigate and validate this info?
  - I've never seen this weird arrow function syntax before that is in the approved answer, wtf. What does that mean? How do I interpret that?
  - Going to MDN to check for other examples.
- At what point should I ask for mentor support? How should the question be formulated?
  - Reemphasize: 15m rule (explained on D1 but must reiterate here)
  - Reemphasize: don't just say "it's not working" to a mentor; explain first what you're trying to solve and where you are stuck. Even asking for help properly is a skill that will take some time for you to acquire, we don't expect it to be perfect on D2 but we expect you to work towards improving it.
  -Reemphasize: Code reviews and their importance

#### Out of Scope

- ES5 vs ES6 feature comparison
- Arrow functions (covered later this week; W1D4 more specifically)
- JavaScript obscurities (the bad parts) (null vs undefined, hoisting, etc, etc)
- Computational complexity, algos, etc
- functions as "callbacks" (no setTimeout, etc) -- covered in breakout
- any async control flow
- closures
- using objects (but can mention `process.argv` implies a process object, but that objects are covered later in the week)
- npm / modules

### Closing Points 

At the end of lecture... 

1. Take a few minutes to show off [JS Tutor](http://pythontutor.com/javascript.html#mode=edit), on the PythonTutor website. Do mention that  
2. Remember to run the `eslint` command
3. Mention that today they will continue on Lotide, but not all the assignments are within the context of Lotide.
