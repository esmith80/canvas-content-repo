---
uuid: 2c6159b9-8865-4aa3-8335-8d50b3075c28
name: 'Using VS Code'
type: 'Assignment'
duration: 60
---

A large part of programming is creating and editing text files. Programmers develop remarkable adeptness at manipulating the content of plain text files.

During this activity, we will practice some of the techniques that professional programmers use when editing text files, techniques that rely _heavily_ on keyboard shortcuts and _minimally_ on the mouse or trackpad. Eventually these techniques will be second nature.

## Create Files

Follow these steps to familiarize yourself with some of the basic shortcuts for creating and editing text files in VS Code.

> #### Warning
> When prompted with a keyboard shortcut to perform a certain action, avoid using your mouse or trackpad to perform said action using the menu system. An important part of this exercise is to familiarize yourself with important shortcuts that every developer is expected to know and use.

<div></div>

> #### Instruction
> Create a folder.

Using your operating system's file explorer, create a folder named `vscode-practice` within your `Documents` (or equivalent) folder. This is the folder where the text files you create during this activity will be saved.

> #### Instruction
> Create a new text file.

Open VS Code and press <kbd>Cmd/Ctrl + N</kbd> (hold down the <kbd>Command</kbd> key on a Mac or the <kbd>Control</kbd> key on Linux or Windows, and press the <kbd>N</kbd> key.) A new untitled text file should appear.

> #### Information
> **Cmd/Ctrl/What?**
>
> Keyboard shortcuts for Mac, Linux and Windows are quite similar, but not exactly the same. Most keyboard shortcuts require you to hold down one key and press another.
>
> The abbreviations for key names are consistent for both, though. <kbd>Cmd</kbd> means <kbd>Command</kbd>, <kbd>Ctrl</kbd> means <kbd>Control</kbd>.
>
> When you see keyboard shortcuts in activities, if the key you hold down is different for Mac and Linux or Windows, they are both given respectively separated by a slash. For example, <kbd>Cmd/Alt + Tab</kbd> means, _"Hold down the <kbd>Command</kbd> key on a Mac or the <kbd>Alt</kbd> key on Linux or Windows, and press the <kbd>Tab</kbd> key."_

Type in the text `Hello World` into the first line and press <kbd>Cmd/Ctrl + S</kbd> to save it. Notice that VS Code will suggest `Untitled-x` be the suggested name of the file. We **never** want this to be the name of a file, so change the file name to `hello_world.txt`. 

Select the `vscode-practice` folder we created earlier to save the file into. This will result in a new file named `hello_world.txt` being saved into tje `vscode-practice` folder.

> #### Instruction
> Add some more text to the file.

* Navigate to [MetroLyrics](http://www.metrolyrics.com/top100.html) and choose a song you like (or dislike &mdash; up to you.) 
* Select the text for the lyrics of the song (you'll need to use the mouse or trackpad in the browser, unfortunately) and press <kbd>Cmd/Ctrl + C</kbd> to copy the text into your clipboard. 
* Now switch to VS Code again by holding <kbd>Cmd/Alt + Tab</kbd>, select all of the existing text in the file using <kbd>Cmd/Ctrl + A</kbd>, and paste the new text into the text file using <kbd>Cmd/Ctrl + V</kbd>.
* Make sure the existing text, `Hello World`, was replaced.
* The "&times;" in the tab for this file should have become a "&bull;" to indicate that the file has changed. 
* Press <kbd>Cmd/Ctrl + Shift + S</kbd> to save this as a new file, select a new file name, and see that the tab goes back to having "&times;" in it.

## Opening folders in VS Code

At this point we've created two files, but opening just a single file at a time can be tedious. Especially later when we'll be working with huge projects with hundred of files. Even later in this course, we're going to be dealing with dozens of files at once.

VS Code handles this by letting us open whole folders and navigate the file structure from within the editor. Now we're going to open our `vscode-practice` folder in VS Code to see the two files we created earlier.

Press <kbd>Cmd/Ctrl + O</kbd> and this time, instead of selecting a file, highlight the `vscode-practice` folder and click the open button, without clicking on any of the files.

> #### Warning
> <kbd>Cmd/Ctrl + O</kbd> Does not allow for the opening of directories in Windows and Linux. For those operating systems you will need to manually open a folder through `File => Open folder`. 

We should now have a new VS Code window, and on the left side we should see our `vscode-practice` folder, and the two files `hello_world.txt` and `song.txt` just below it. Clicking on either of those files will open them in a new tab in the editor.

> #### Note
> If you do not see your `vscode-practice` folder and your two files on the left side, you may need to show the Side Bar first. To do that, try the tricky keyboard shortcut for it first: <kbd>Cmd/Ctrl + KB</kbd>. That means hold down <kbd>Cmd/Ctrl</kbd> then type the keys <kbd>K</kbd> and <kbd>B</kbd> one after the other. If that's a bit too tricky for you, don't worry, it'll come with practice. We'll look away as you cheat for this one and use the menu at the top. Click `View -> Side Bar -> Show Side Bar`.

## Selecting text with the keyboard

> #### Information
> **Highlighting Text**
>
> Want a quick and easy way to select text using the keyboard? Try these essential shortcuts in VS Code, and see how they work.
> 
> <kbd>Cmd/Ctrl + left/right</kbd> - Move your cursor to the beginning or end of a line.  
> <kbd>Option/Alt + left/right</kbd> - Move your cursor to the beginning or end of the nearest word.
> 
> Hold <kbd>Shift</kbd> along with either of the two shortcuts above to select as your cursor moves.
>
> Practice and try to memorize these keystrokes. Being deliberate in using them will slowly make this second nature.

It doesn't take long to discover that when it comes to code, there are almost always multiple ways to accomplish different tasks. For example, if we wanted to delete a line in the `song.txt` file, we might click and drag to select it with our mouse and then press the delete key, the old fashioned way. But VS Code gives us some powerful tools using only our keyboard.

> #### Instruction
> Delete a line of code.

With our cursor on the line you want to delete, press <kbd>Cmd/Ctrl + L</kbd> to select an entire line, and then press backspace to delete it. But wait, there's an even faster way! Press <kbd>Cmd/Ctrl + Z</kbd> to undo what you just did, and let's try it a different way.

Again with your cursor on the line you want to delete, press <kbd>Ctrl + Shift + K</kbd>. Boom, that entire line gets deleted just like that, no need to highlight or press delete.

## Other Handy Shortcuts

Here are a few other handy shortcuts that are useful

* <kbd>Cmd/Ctrl + W<kbd> - Closes the current file
* <kbd>Cmd/Ctrl + T<kbd> - Search for and open a file in the current workspace
* <kbd>Cmd/Ctrl +/-<kbd> - Enlarge or shrink text

Additionally, here are some cheat sheets for VS Code shortcuts. Make sure to bookmark them! If you every find yourself doing something in the editor that feels tedious and frustrating remember, there is probably a shortcut that will make your life easier!

**Common Keyboard Symbols**

Symbol | Name
---------|----------
 `⌥` | Alt/Option
 `⇧` | Shift
 `⌃` | Control

* [Mac OS](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)
* [Linux](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf)
* [Windows](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)


## Conclusion

In this exercise, we practiced some of the common tasks that we will experience ona daily basis when writing code.  
