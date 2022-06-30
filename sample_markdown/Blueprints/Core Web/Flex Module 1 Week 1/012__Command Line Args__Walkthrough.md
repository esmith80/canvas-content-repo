---
uuid: c997336c-2105-4241-9437-b4e21b602aa7
duration: 20
tags: bash,focal
---

In this activity, we're going to learn about command line arguments and how to access them. In doing so, we'll also be reviewing how to index and loop through arrays.

## Setup

> #### Instruction
> Create `processargv.js` in your `focal` work directory.

To try out some of the code samples from the upcoming readings, navigate to the directory you made for today's work.

```terminal
cd /vagrant/focal
```

Create a new file called `processargv.js` within it:

```terminal
touch processargv.js
```

## Parsing Command Line Arguments

Command line arguments are a common way of getting user input in a program.

> #### Instruction
> Read the following article: [**Command Line Arguments in Node.js**](https://stackabuse.com/command-line-arguments-in-node-js/)

<div></div>

> #### Warning
> Don't concern yourself with the _Minimist_ or _Using the Yargs Module_ sections, which require installing additional packages in order to handle more complex cases. They are overkill for what we need right now. You can stop reading the article when you get to this point.

This article speaks to the rationale behind command line arguments and shows you how to leverage them.

## Conclusion

We learned about command line arguments and how to access them using the `process.argv` array. This will prove useful in being able to create mini _Command Line Applications_.

## Teacher Notes

The old/previous external reading about command line arguments that we used to refer to (in the [Adding Numbers](/f7272914-fb65-4e04-8cd8-aea32318f2f1) activity) was not so good, but here it is in case you are curious: 

> [How to parse command line arguments (NodeJitsu)](https://web.archive.org/web/20160420012028/https://docs.nodejitsu.com/articles/command-line/how-to-parse-command-line-arguments)

It was all over the place, and student feedback did reflect this.
