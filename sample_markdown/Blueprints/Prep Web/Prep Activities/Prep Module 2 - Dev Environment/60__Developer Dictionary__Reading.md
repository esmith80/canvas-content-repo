

In programming articles and tutorials, there are often a number of terms and references used that a beginner may not understand. Some of these terms can be provided without a lot of context at first, making their usage confusing.

In this activity we'll lay out some terms, symbols, and slang you might see during the course and explain their significance. You may have heard some of these terms before, and some will be explained in more detail later.

You don't have to read this entire document now. Instead consider it as a resource for whenever you're unfamiliar with a technical term that we use in the prep course or bootcamp.

These are the more important terms and symbols you will need for this course.

### General

* `documentation` OR `docs` - Refer to a set of information regarding the usage of a specific programming language or tool.
* `workflow` - The sequence of processes through which a piece of software passes from initial setup to completion.
* `init` - Short for "initialize". Usually refers to when a program is first run and required data is collected.
* `[this]` OR `<this>` - In documentation and tutorials you may see a word surrounded by square or angle brackets. Depending on the context, the square brackets indicate that a variable is an optional parameter, while the angle brackets indicate that a variable is mandatory. (For more on `parameters` see the Other Terms and Symbols section below)

### Terminal/Command Line

* `terminal` OR `command line` - These terms refer to the program each respective operating system uses to run explicit commands. You will get very familiar with its usage.
* `$` - When you log onto a UNIX system, your main interface to the system is called the UNIX SHELL. This is the program that presents you with the dollar sign ($) prompt. This prompt means that the shell is ready to accept your typed commands. There is more than one variety of shell that can be used on a UNIX system. For the purposes of this tutorial, we will assume you are using one of the most standard UNIX shells called the Bourne Shell. Other shells such as the Korn Shell or Bourne Again Shell work very similarly at this level. They all use the dollar sign as their prompt.
* `>` - Similar to the '$' described above, the Windows operating system uses the '>' symbol as a to separate the user's current working location and the user's commands.
* `~` - On a UNIX Shell, the '~' is used as shorthand to indicate to the user that they are currently working in their 'home' directory (the directory named after the current user).

### Coding

* `foo`, `bar`, and `baz` - You will often see terms like this in programming examples. These are meaningless words often used as placeholders for data or functionality that doesn't really require a proper name to get across the idea being presented.


## Other Terms and Symbols

If you want to be well versed in programming terminology, below are a list of definitions we feel you may find helpful.

### Terminal/Command Line

* `shell` - This term is used for the software that controls the execution of commands in the terminal/command line
* `ssh` - Short for 'Secure Shell', this term commonly refers to a secure connection to another computer through the terminal/command line.
* `flag` or `option` - Most commands that run in the terminal can be followed by additional information specifying how the command should run (as opposed to its default settings). You will learn more about this in the next module. 
* `REPL` - Short for "Read–Eval–Print Loop". A "REPL" is a way to run segments of code in the terminal without the use of a web browser. It reads in a line of code, or even a code file, runs or 'evaluates' the code, and prints a result. After the result is printed, it prompts the user for another input.  

### Coding

* `runtime` - This refers to the time from which software starts running to when it stops.
* `function` OR `method` - An isolated segment of code used for specific program functionality. For example, a function called 'add' would take some numbers as input, add them together, and output the resulting sum. 
* `argument`, `parameter` - Often in programming you will have code that will need input to run. Data provided to a piece of code will often be referred to by one of these terms.
* `type` OR `data type` - All data in programming is stored in specific ways. The way storage is organized is through 'data types'. For example an 'integer', which is a whole number, would be stored by the computer differently than a 'string', which is a list or 'string' of keyboard characters.
* `declare` OR `declaration` - A declaration provides basic attributes of a variable or named block of code (see `function`): its type and its name.
* `define` OR `definition` - Similar to `declare` refers to the act of or outcome of creating a new variable or named block of code (see `function`), but it also includes providing all the details required.
* `operator` - Symbols like '+', '-', and '=' are referred to as 'operators'.
* `expression` - A combination of data, operators, and functions that a programming language interprets.
* `evaluation` - The act of interpreting an expression.
* `concatenate ` - This refers to the act of bringing two strings of characters into one. For example, if I had "Hello" and "World" I would concatenate  them into "Hello World".
* `statement` - The smallest standalone term/keyword in a programming language that expresses some action to be carried out. (Ex. `if`, `while`, `for`)
* `primitive data type` - The most basic types of data such as an 'integer', 'string', or 'boolean'.
* `abstract data type` - A data type defined by the programming language that combines data with functionality. For example, an 'Array; is an abstract data type that is a list of variables, and it also provides built-in ways to manipulate that list. 
* `object` - An 'object' refers to a collection of data, data structures, and functionality that form a cohesive entity. 

### Computer Hardware and Software 

* `Memory` - You may see this used in a phrase such as "stored in memory". This is usually referring to storing data in the computer's 'RAM' (see next definition).
* `RAM` - "Random-Access Memory" is temporary storage space on a computer where required data is stored during the time that a program runs. This is necessary because accessing data from a hard drive can take much longer, and programs need to be able to retrieve and store data quickly to be effective. For example if you were to run a video game its images, sounds, and operational data would be stored in RAM to be quickly accessed when the game needs it. The game would also store data like your player's location and status to read and manipulate later.
* `CPU` - The "Central Processing Unit" is what makes a computer...compute. Think of it as the brain of a computer. Data and instructions are run through the CPU resulting in an output.
* `disk` - When the term "disk" is used on its own, it often is referring to a computer's `HDD` or "Hard Disk Drive". This is where data is stored on a more permanent basis. It can even be used as a catch all term for permanent storage, even if a machine is using an `SSD` or "Solid State Drive".
* `virtual` - Though mostly self explanatory, you may hear this word used in unexpected ways. "Virtual" usually means a simulated version of something physical. Later in this Prep Course module, for example, you'll hear the term "virtual machine" which is referring to a simulated version of a fully functional computer. A virtual machine even has simulated hardware, which bases itself off of your physical computer's physical hardware.
