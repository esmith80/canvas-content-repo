


In this activity you'll put your new found git skills to use by pushing your `javascripting` code to GitHub.



### Initialize

> #### Instruction
> Change directory (using the `cd` command in your Vagrant terminal) into the appropriate folder, and run `git init` in there to create a local repo.

### Add & Commit

Our folder may have files in it but as far as Git is concerned, the _repo_ is empty.

We can tell Git what files we want to `commit` with the `git add` command.

> #### Instruction
> Use the git add command to add *all* of the files created during the `javascripting` exercise.

```terminal
git add introduction.js
git add variables.js
git add strings.js
git add string-length.js
git add etc ... 
```

> #### Note
> If you are adding multiple files to git, you can add them all on one line by separating each file with a space.

```terminal
git add introduction.js variables.js strings.js string-length.js ...
```

> #### Instruction
> Run `git commit -m "Initial commit with all my work so far"` (change the message in the double quotes as you like).

You've created your first commit! Use `git log` to see it in the local git history.

### Create a new repo on GitHub

The repo you just created and added content into is sitting locally on your computer. If you accidentally deleted it, or worse, if a yellow school bus ran over your laptop, you'd lose all your work.

Time to create a repo on GitHub so we can push our changes there.

> #### Instruction
> Log into your GitHub account and click the "+" button next to your profile icon in the top right to create a new repository.

Call this new repo "javascripting" for consistency. After creating the repo, copy the git repo's SSH URL that GitHub gives you (it should start with `git@github.com`), and use it in the following command, to link your local repo to the one on GitHub.

```terminal
git remote add origin <URL>
```

> #### Note
> The angle brackets are not part of the command, they signify which part to replace with the correct URL.

<div></div>

> #### Instruction
> Now push your work to GitHub, using the following command.

```terminal
git push origin master
```

## Submit your work

When marking this activity as complete in Compass, you'll be prompted to insert the GitHub URL. Please insert the URL that appears in the browser when you are viewing your newly created repo, _not_ the git URL that you used in the `git remote` command above.
