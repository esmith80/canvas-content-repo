---
uuid: 207237c2-b778-11ec-b909-0242ac120002
name: 'Push Bash to Github'
type: 'Assignment'
allow_submissions: true
duration: 30
---


In this activity you'll put your new found git skills to use by pushing your `bash` code to GitHub. Used the file you wrote [in this tutorial](/17bd6f99-5eb1-4302-bce0-48e1370ee24f).



### Initialize

> #### Instruction
> Change directory (using the `cd` command in your terminal) into the appropriate folder and run `git init` in there to create a local repo.

### Add & Commit

Our folder may have files in it but as far as Git is concerned, the _repo_ is empty.

We can tell Git what files we want to `commit` with the `git add` command.

> #### Instruction
> Use the git add command to add *all* of the files created during the `bash` tutorial.

```terminal
git add <file from the tutorial>
```

> #### Note
> If you are adding multiple files to git, you can add them all on one line by separating each file with a space.


> #### Instruction
> Run `git commit -m "Initial commit with all my work so far"` (change the message in the double quotes as you like).

You've created your first commit! Use `git log` to see it in the local git history.

### Create a new repo on GitHub

The repo you just created and added content into is sitting locally on your computer. If you accidentally deleted it, or worse, if a yellow school bus ran over your laptop, you'd lose all your work.

Time to create a repo on GitHub so we can push our changes there.

> #### Instruction
> Log into your GitHub account and click the "+" button next to your profile icon in the top right to create a new repository.

Call this new repo "bash_tutorial" for consistency. After creating the repo, copy the **git repo's SSH URL that GitHub gives you** (it should start with `git@github.com`)(this URL i referred as `<URL>` below), and use it in the following command, to link your local repo to the one on GitHub.

```terminal
git remote add origin <URL>
```

> #### Note
> The angle brackets are not part of the command, they signify which part to replace with the correct URL.

<div></div>

> #### Instruction
> Now push your work to GitHub, using the following command.

```terminal
git push origin main
```



## Submit your work

When marking this activity as complete in Compass, you'll be prompted to insert the GitHub URL. Please insert the URL that appears in the browser when you are viewing your newly created repo, _not_ the git URL that you used in the `git remote` command above.
