---
uuid: 6e0e429a-670e-4acb-9dd9-a3b226209b20
duration: 45
type: Walkthrough
tags: bash,git
outcomes:
  - e671fd1a-5ba5-470d-b5f3-5fc7287a1aa0
  - 93fa8b88-836d-4a84-a05f-b69403d1071b
  - 24241458-d696-4203-aaff-da3054b75e8f
  - 7c70fed0-8ac1-441e-be1a-231370a536c3
  - 37a052fd-f747-4cb6-b8a1-ac351f0f68fc
---

Here at Lighthouse we use [GitHub gists](https://gist.github.com/) as one convenient way to share small "snippets" of code we've built together in class and to get you started on assignments that don't span across too many files or directories.

In this activity you're going to learn about gists and how to **fork** and **clone** them.

## What Are Gists?

Regular **git** repositories on GitHub are great, but they're pretty complex. They have a lot of features well-suited for working on big projects and collaborating with others, but sometimes we just want to share small snippets (small amounts) of version-controlled code without needing the full functionality of GitHub repositories.

_Enter gists._

A **gist** is just another git repository, except that its interface on GitHub's website is designed specifically for quickly and easily sharing code snippets.


## Difference between Gists and Full Repos

It's important to note that there are a few key differences between gists and repos on GitHub. 

First, gists cannot be given names - instead GitHub automatically assigns them a long, cryptic and unmemorable one. This can make them annoying to work with when we clone them to our computers, but if we're careful, we can easily avoid this. 

![](https://d.pr/i/QtBtuY+)

Second, multiple people cannot directly contribute to a single gist. This means we'll always be _forking_ other people's gists before cloning them. 

<!-- TODO: Using http://cmx.io Insert funny xkcd comic with dude asking if he can fork another person's gist, while holding a big (pitch fork)  -->

And lastly, gists come in two flavours: **public** and **secret**. 

**Public gists**: Like public GitHub repos, these gists are searchable and discoverable by anyone.  
**Secret gists**: These are neither searchable nor discoverable, but they're not private. They can be viewed by anyone but only as long as they know the gist's URL. This means that if you'd rather share your code snippets only with a few select people and not with the whole wide web, you should make them secret!

## Forking and Cloning Gists

Use the following as a guide to forking and cloning the gists that you need to complete your assignments. This guide uses the first coding challenge for today ([What should I do for lunch?])(/d5c153ed-ef80-4ad8-a0f5-5b84d1399ca5). 

> #### Warning
> If you're using this guide to work on a different assignment which would be using a different gist, make sure you use the correct URL in your commands.

### Fork the Gist

> #### Instruction
> Browse to the gist you'd like to clone

If you are using this guide for the first time, you should use [this gist](https://gist.github.com/NimaBoscarino/068a5a51d2ee19604a00283af7deee4f) which is used for the upcoming practice.

> #### Instruction
> Click the `Fork` button near the top right corner. 

You'll be redirected to your own personal fork of this gist.

### What's a Fork anyway?

A fork is a GitHub operation (not strictly a git command or feature) by which one GitHub user creates their own copy of another GitHub user's existing repository. It can be done with Gists as well.

The forked repo or gist links back to the original one but the difference is that the forked one is fully controllable by the user that created the fork.

This is a powerful feature which promotes collaboration on open source projects. Anyone can "fork" the code for node for example, make improvements and changes for themselves and potentially even submit them back to the main repository (with a proper authorization workflow of course, otherwise we'd have anarchy). We'll worry about that part later.

In our case, we're asking you to fork initial code that we've written so that you can take it further. A similar concept to what's described above, but for purposes of completing an assignment.

## Your First Forked Gist

> #### Instruction
> Copy the SSH URL of the gist so that you can clone it.

Start by selecting SSH using the dropdown as shown:

![SSH Clone URL](https://i.imgur.com/GDfq66j.png)

Once you've selected SSH, click the little clipboard icon to the right to copy the URL to the clipboard:

![SSH Copy URL](https://i.imgur.com/tsRUK8N.png)

> #### Instruction
> Clone the gist using the copied URL into your work directory.

Open your Terminal, and from within Vagrant, change to the directory to your new `focal` directory.

```terminal
cd /vagrant/focal
```

Now clone the URL we copied from the gist page using the following command (don't copy/paste the below):

```terminal
git clone git@gist.github.com:YOUR_FORKS_ID.git lunch
```

This will create a folder `lunch` in the current working directory and download the contents of the repository into it.


> #### Information
> **Naming your cloned gist directory**
> 
> Notice that we passed the optional parameter `lunch` to the `git clone` command, after the gist's URL. This is the name we'd like to give our local gist directory. Without specifying it, `git clone` will automatically create a directory with the name of the gist – in our case the gibberish `7cafdb1e53079cbadb89`. 
>
> If you forget to give your gist a more human-readable name (and you haven't made any local changes yet) you can remove the directory (`rm -rf path/to/your/gist/directory` from the Terminal) and `git clone` again, this time passing the optional directory name argument.

The output will look something like this:

```bash
Cloning into 'lunch'...
remote: Counting objects: 6, done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 6 (delta 1), reused 6 (delta 1), pack-reused 0
Receiving objects: 100% (6/6), done.
Resolving deltas: 100% (1/1), done.
Checking connectivity... done.
```

To confirm this, let's list the contents of our working directory and then also jump into this new repo's directory.

> #### Instruction
> Go into the `lunch` directory and verify that things worked out well for you.

```terminal
cd /vagrant/focal/lunch
```

> #### Information
> **Tab Completion** 
>
> Remember that you can and _should_ use **tab completion** as you type each directory in the path. Take this opportunity to practice this useful habit. 
> 
> ![](https://d.pr/i/J4VHfG+)

```terminal
ls -lah
```
```terminal
pwd # to confirm that we are in the correct directory
```

## Conclusion 

We introduced the idea of using gists, a handy feature in GitHub to create "micro" repositories for sharing small snippets of code either privately or publicly with the world. We also explored the concept of forking gists in order to create our own copy within our GitHub account. This way we can have full control and make changes without directly affecting the original gist. 

In doing all this, we're now ready to work on our upcoming challenge: _What should I do for Lunch?_

That's it! We're now ready to start coding! 

![gist meme](https://i.imgur.com/T5su6Bp.png)


