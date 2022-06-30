---
uuid: 4c27130e-0a67-4cf3-a150-78b2dab94c75
duration: 5
---

Remember that when we prepare for a new topic or a new project, we name the directory in a way that helps us organize our work. 

In this activity, we'll create a directory and a sub-directory called `objects`.

> #### Note
> If you want more detail on best practices for naming directories throughout your journey at Lighthouse, look back at [Organizing Our Code](/1cdbdc85-a4eb-46c8-ade4-5d90de90c07c).

<div></div>

## Creating A New Directory

> #### Instruction
> Create new directory in Vagrant under the `focal` directory. Use the `mkdir` command to create a directory called `objects`.


```sh
cd vagrant/focal
mkdir objects
```

> #### Warning
> **Avoid Nested Git Repos!**
>
> Do not initialize a repository inside of this directory. Otherwise, you will end up with git repos inside of git repos, which is not ideal when using git. 

## Creating Subdirectories

**Each upcoming exercise should have its own subdirectory within the `objects` directory.** 

These exercise-specific subdirectories can be git repositories. That is why we will not initialize a repo at this level. 

That said, any progress on the _Lotide_ project will remain in its original folder.
