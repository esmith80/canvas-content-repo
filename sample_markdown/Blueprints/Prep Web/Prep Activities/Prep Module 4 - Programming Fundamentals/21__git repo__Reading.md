---
uuid: 26c99d86-5f4a-42a2-b871-58e38f857471
name: 'Setting up a git Repo'
type: 'Reading'
duration: 15
---

Starting with the exercises in this module, we're going to be writing JavaScript files and committing them to a new git repository to keep track of them all and to submit the work.

## Creating a New Repo

We will be creating a single git repo for all of the exercises in this module. Every single file that we create in Module 4 should be committed to this repo and pushed to GitHub.

> #### Instruction
> Create a new github repo and clone it.

* Log into [GitHub](http://www.github.com) and create a new repository called `lighthouse-js-fundamentals`.
* Copy the SSH link provided to you by GitHub, then ssh into Vagrant and clone the repo you just created using the `git clone` command.

```terminal
git clone git@github.com:YOUR_USER_NAME/lighthouse-js-fundamentals.git
```

* Now, `cd` into the new directory.

```terminal
cd lighthouse-js-fundamentals
```

## Conclusion

In this exercise, we setup a new git repo. This is where we'll be saving all our exercise files in this module. Every time a new file is created within this directory, we'll `commit` it to `git` and then `push` it to GitHub.
