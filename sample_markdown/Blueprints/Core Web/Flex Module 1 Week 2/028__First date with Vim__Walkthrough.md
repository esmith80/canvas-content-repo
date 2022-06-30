---
uuid: cd72accd-47e8-4aa7-8175-333b59c10e28
duration: 20
---

Beyond VSCode, which we will use throughout this course, there is another code editor we'll need to get (somewhat) familiar with. It has been here since 1991 and its power users still give major editors a run for their money.

It is called... wait for it.... **Vim**.

Familiarity with basic vim commands is pretty useful - if not absolutely necessary - if you have to edit a file in a remote ssh terminal.

> #### Information
> Vim is also the default editor for git -- it launches vim when it needs additional text from you, such as a commit message.

## First date with Vim

Vim comes installed on your vagrant machine as well as your Mac. 

> #### Instruction
> To launch, open your `terminal` and type `vim`. 

You should see the following screen.

![Open Terminal window with Vim welcome screen titled "VIM - Vi IMproved".](https://gist.github.com/punjab/da6f33d8b2bc189f1926/raw/6a0813b4a3ae0a8f8534a09313ac69fb8e1530db/vim.png)

## Vim modes

Vim operates in two modes - edit and command mode. Edit mode is the state in which the keys you type on are actually inserted into your document, whereas the command mode allows you to navigate through the document, search and replace text, copy and paste, etc. By default when you open a file, you're placed in command mode.

## Moving around

You can use the `H`, `K`, `J` and `L` keys to move around. Here's how it breaks down: "H" moves left; "K" moves up; "L" moves right; "J" moves down. You can, of course, use the arrow keys as well, although using arrow keys is _apparently_ the non-ninja style of using vim. 

## Tutorial

Let's create a small tutorial for creating and editing files in `vim`.

### Create/open a file

> #### Instruction
> Create a new file and open it in vim by typing `vim tutorial.txt`. 

This will create a file named `tutorial.txt` and open it in vim.

### Edit a file

> #### Information
> VIM launches into the **command mode** by default. 

To switch to **edit mode** (also called _"insert mode"_) you need to give VIM a command to tell it to switch modes. There are two ways to do this:

+ Press "i" to begin inserting text at the current cursor position.
+ Press "a" to begin inserting after the current cursor position.

> #### Instruction
> Press "i" in the file to enter insert mode. Add some text to the file.

Getting out of editing mode is a bit more intuitive: just hit the <kbd>ESC</kbd> key.

> #### Instruction
> Press <kbd>ESC</kbd> in the file to make sure you are back to command mode.

Got a handle on those three? Here are some other commands in command mode. And remember, these commands are case-sensitive, so take note of those stray capital letters:

+ `Y` copies a line of text to the buffer.
+ `P` pastes it to the cursor's current position.
+ `dd` will delete the whole line of text. This will also effectively "cut" a line of text as well. When you delete a line, it's placed in the buffer.
+ `yy` copies a whole line of text.

> #### Instruction
> Try out the commands above while navigating lines (using arrow keys) in _command mode_.

## Saving a file

While editing a file, its always a good idea to save the text. To do that you would need to do the following:

+ Make sure you are in command mode. Use `escape` key to make sure.
+ type `:w`
+ That's it.

> #### Instruction
> Save the file while in command mode.

## Quit vim

Once you have finished editing you can quit vim in one of the following two ways:

+ `:wq` - write (save) and quit file (and vim)
+ `:q!` - quit and ignore changes made since last file save.

That is all you need to get started with `vim`.

> #### Information
> To learn more about vim - and there is quite a bit to it - vim comes with a walk through tutor, `vimtutor`, that you can run on your terminal.

<div></div>

> #### Information
> Here is another quick [cheatsheet for vim](http://www.viemu.com/vi-vim-cheat-sheet.gif).

Although it may look more complex for a code editor when compared with VSCode, the vim senpais swear by the speed gains once you get used to it.

If you would like some Vim interactive tutorials, check out the links below (or bookmark them for later).

* [OpenVim](http://www.openvim.com/) - An interactive tutorial that teaches you the basics of Vim
* [Vim-Adventures](https://vim-adventures.com/) - A gamified tutorial that teaches you Vim while you play a game!

## Conclusion

In this tutorial we practiced the basics of getting around the vim editor, which can be launched by `git`. 

Now you hopefully won't end up like one of these poor students: 

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">How do you generate a random string? Place a new student in front of Vim and ask them to quit. via <a href="https://twitter.com/codesnipcademy?ref_src=twsrc%5Etfw">@codesnipcademy</a></p>&mdash; Mastering Vim (@MasteringVim) <a href="https://twitter.com/MasteringVim/status/618352191531819008?ref_src=twsrc%5Etfw">July 7, 2015</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


