We've just written some code to solve a problem, which is great. However, writing a working solution is only half the battle (many would say it's _much_ less than half)! Let's talk about and work on _some_ of the other half, then.

When we're working within a team of developers, we all need to agree on conventions. Code quality and consistency are important. Otherwise, with each developer bringing their own conventions, the product codebase will look messy and confusing.

> #### Note
> **Code Linting** is one part of the solution towards writing maintainable, consistent code.

Wikipedia's introductory explanation [about linting](https://en.wikipedia.org/wiki/Lint_(software)) does a good job: 

> Lint, or a linter, is a tool that analyzes source code to flag programming errors, bugs, stylistic errors, and suspicious constructs.

_Well said Wikipedia, well said!_

Let's go ahead and learn to lint our code!

![Cat hair on a lint roller with the cat in the background](https://live.staticflickr.com/65535/52134686694_e761240412_b.jpg)

## ESLint

There are various linting solutions in the JS ecosystem. One of the most prominent / well-adopted one is **ESLint**.

> #### Instruction
> Take a peak at the [ESLint website](https://eslint.org/). 

Don't spend too much time browsing there though, as we'll play with it soon enough. 

## Fixing Linting Errors (Demo)

Before we get into setting up ESLint on our local (Vagrant) machine, let's just play with a quick demo to appreciate the value proposition we get from linting.

ESLint's website has a built-in demo, and we've added some settings and code to it for our exercise.

> #### Instruction
> Fix ALL of the linting errors and warnings on [this demo page](https://bit.ly/2MFGzOq)

Modify the code until there are no issues remaining on the right-hand side.

These errors may look familiar to the ones reported by Compass during the prep course. That's because we use ESLint in Compass as well!

## ESLint Setup

Time to install this awesome tool on our machine!

> #### Instruction
> Install globally using our Vagrant VM.

From _any_ directory in our Vagrant machine, please run:

```sh
npm install -g eslint
```

## ESLint Config File

ESLint is highly configurable. Different teams have different preferences. For example, at Lighthouse we prefer 2 spaces for indentation. Various other teams prefer 4 spaces.

> #### Information 
> Each team and/or project will tend to have its own ESLint config file, shared by all devs working on that team/project.

Lighthouse has [its own ESLint file](https://gist.github.com/kvirani/6cdb9511522d4357839718a050e7dd3b) that we shall use.

> #### Instruction
> Follow the appropriate instruction for downloading the ESLint file for your environment (Vagrant or Mac M1).

#### Vagrant
If you're using vagrant, download the `.eslintrc.json` file into our `/vagrant` folder with the command below:

```sh
curl -o /vagrant/.eslintrc.json https://gist.githubusercontent.com/kvirani/6cdb9511522d4357839718a050e7dd3b/raw/.eslintrc.json
```

#### Mac M1
If you're using a Mac M1, download the `.eslintrc.json` file into our root folder with the command below:

```sh
cd ~
curl -o .eslintrc.json https://gist.githubusercontent.com/kvirani/6cdb9511522d4357839718a050e7dd3b/raw/.eslintrc.json
```


## Running ESLint

We can run ESLint from any directory in our Vagrant machine, using the `eslint` command. 

```sh
> eslint

eslint [options] file.js [file.js] [dir]

Basic configuration:
...
```

Based on the instructional output above, we see that we could run this command line with a file or directory, like so:

```sh
eslint app.js
```

or even:

```sh
eslint .
```

The latter example above would run ESLint for all JS files in the current directory.

## Conclusion

We've learned about why and how we can lint our code. This is something that you should be doing with _all_ code that we write. While we will do our best to remind you about linting at key points, don't wait for our signal. Lint away as much as your heart desires!
