In this reading we will explore one way to organize our various code files into directories ("folders") throughout our journey! We will create a folder using the command line.

## Dev Work in Vagrant

All assignments at Lighthouse assume that we're using the virtual machine provided in the prep work.

> #### Danger
> If you are not using a Vagrant / Virtual machine for your environment, the initial steps around connecting to that machine and using the `/vagrant` folder will not apply to your situation. That said, the other instructions around organizing our work into specific directories will still apply.

<div></div>

> #### Instruction
> SSH into your Vagrant machine if you're not already there.

From our host machine's terminal, run the following command:

```terminal
vagrant ssh
```

Once in the VM, the `/vagrant` directory is always our starting point, since that is the directory that is sync'd with our main ("host") machine.

> #### Information
> The command above assumes that you're in the correct directory on your host machine (which should be `~/lighthouse`).

Terminal commands in the remainder of this activity as well as future activities in Compass assume that we have already `ssh`'d into our Vagrant machine.

## General Directory Structure

There are a number of ways to approach organizing our files. For instance, we could take an approach where we organize things by each week of the course. However, we're going to organize files by topic and by project. Broader topics will be the parent directories and subtopics will be the sub-directories. The first broad topic that we'll deal with is F.O.C.A.L. (**F**unctions, **O**bjects, **C**onditionals, **A**rrays, **L**oops)

Let's make a `focal` directory which will serve as a parent directory for other folders that we'll create throughout the first part of the course.

> #### Instruction
> Check if you are in the `/vagrant` directory with the `pwd` (print working directory) command:

```terminal
pwd
```

> #### Instruction
> If not, `cd` into that directory.

```terminal
cd vagrant
```

> #### Instruction
> Create and switch to a directory called `focal`.

```terminal
mkdir focal
```

```terminal
cd focal
```

When we check which directory we're in (using `pwd`), we should now see:

```terminal
/vagrant/focal
```

> #### Warning
> **Do _not_ run `git init` in the `focal` directory.** Instead of tracking this larger directory, we'll be using `git` to track _activity-specific directories_ which will be at another level inside of our `focal` directory. We should avoid nesting repositories inside of each other, which is the reason for not tracking these outer ones.

## Project-Specific Directories

Throughout the program, we will complete various projects. In fact, we start our very first project later today! Each project will have its own directory. These projects may ask us to fork and clone starter code from GitHub. We will work inside these project directories until the project is finished.
