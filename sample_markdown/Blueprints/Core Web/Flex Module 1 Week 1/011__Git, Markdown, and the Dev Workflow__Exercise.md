---
uuid: 22859b64-6a34-402a-96b1-2902f8526203
name: "Git, Markdown, and  the Dev Workflow"
type: Walkthrough
duration: 30
tags: git,node
---

In this activity we will create a new Git repository, learn the basics of Markdown, and create a README file with our newly learned Markdown skills.

When starting and maintaining a new project, there are a number of common steps a developer follows.

To practice these steps, our new project directory will be a repository of content (not code) as it will be used to hold all of our class notes throughout the course. 

> #### Warning
> A gentle reminder to not copy/paste content from Compass into your assignment.

## Initializing A New Project

> #### Instruction
>  Create a directory in your `/vagrant` folder called `lighthouse-web-notes`. 

```shell
cd /vagrant
```

```shell
mkdir lighthouse-web-notes
```

This will serve as the project directory.

> #### Instruction
> Switch into your newly created directory.

```shell
cd lighthouse-web-notes
```

> #### Instruction
> Initialize a new git repo in this directory.

```shell
git init
```

> #### Instruction
> Create a README file (called `README.md`) using the Terminal.

```shell
touch README.md
```

> #### Instruction
> Add the `README.md` file to the repository

```shell
git add README.md
```

> #### Instruction
> Commit your changes

```shell
git commit -m  "Blank README.md added"
```

### Pushing to Github

We can now push this new repository along with its single commit to a new repository on GitHub.

> #### Instruction
> Create a new and completely empty repository with the same name on GitHub. 

<div></div>

> #### Warning
> Make sure to leave the checkbox next to ‘Initialize this repository with a README’ empty because we will be creating our own README file.

![](https://d.pr/i/Ov3aBJ+)

> #### Instruction
> Add the URL of the new repo as a remote on your local repo.

```shell
git remote add origin <URL>
``` 

(Replace `<URL>` with the URL of your repo)

> #### Instruction
> Push your changes to GitHub.

```shell
git push -u origin master
```

## Single Projects Per Editor Window

Working with our new project in the editor, it's important to avoid just opening the files we want to edit. Instead, we should open the entire project folder in a new editor window.

> #### Instruction
> Open the `lighthouse-web-notes` folder in VSCode.

## Formatting the README with Markdown

Our README file has the `.md` extension, which tells us that the contents of the file contains markdown.

Markdown is a simple markup language that allows a developer to easily format text. Markdown can also be parsed into HTML, allowing Markdown to be used in webpages.

### Headings

> #### Information
> Most GitHub repositories have a `README.md` file in the root directory that provides useful information about the project.

Today we will be using our README file to describe our repository, and provide convenient links to the repository folders. 

> #### Instruction
> Add a Title

Let's start by adding a title to our README. Insert the following Markdown code as the first line of your README file.

```markdown
# [Your Name]'s Notes
```

In markdown the `#` symbol denotes a header, similar to header tags in HTML. Also like header tags, you can make the header smaller or bigger.

```markdown
# This is an H1 header (largest)
###### This is an H6 header (smallest)
```

> #### Instruction
> Commit your changes to Git and push your local changes to GitHub. 

If you visit the repo on `github.com`, you should be able to see the new header you just added.

<!-- https://github.com/sam-meech-ward-lighthouse-labs/lighthouse-web-notes/tree/5f7b407f3ebed2ee5c935d43e57c5fc53e057a90 -->

> #### Instruction
> Add a Summary

Next, we should add a simple summary to our repository that describes the repository to any potential visitors.

* Add an appropriately sized 'Summary' header to your README.
* Add some Summary text under your summary header.

**Example:**

```markdown
## Summary 

This repository contains all of the notes taken by [Your Name] for the Lighthouse Labs Web Development Bootcamp.
```

## Previewing Your Changes In VSCode

Before going further into Markdown syntax, it would be nice if we could see the results of our markup.

> #### Information
> VSCode gives you the ability to control your editor in a number of ways. You can choose whether to open a pair of editor windows, or you can choose to open an editor window and a preview pane. For Markdown, this is an excellent way to see what the effects of your note-taking are, as you are writing.

![Typing markdown in the editor window appears as text on a Compass page within the preview window](https://d.pr/i/D1GsdL+)

> #### Information
> _Notice what we did there?_ We indirectly showed you that behind the scenes, all the assignment content in Compass is written in Markdown!

<div></div>

> #### Instruction
> Open the markdown preview.

Follow the demonstration shown above to click the "Open Preview To the Side" button in VSCode. 

Play around with the content and you will notice that not only will VSCode show you a snazzy preview of our markdown, it also live-updates! This is quite handy, especially when we are getting acquainted with Markdown.

> #### Information
> VSCode has a keyboard shortcut for launching a preview. Hover over the button to see the tooltip that shows the shortcut. For macOS the shortcut involves first pressing <kbd>Cmd + K</kbd> and then <kbd>V</kbd> separately.


### Links

This summary is good, but what if someone is curious about some of our other repositories or Lighthouse Labs? We should add some in-line links to this summary that lead to our GitHub profile, and to the Lighthouse Labs website.

We can create a link with the following Markdown syntax:

```Markdown
[Link Text](URL)
```

> #### Instruction
> Add links to the summary. 

Edit the summary so that `[Your Name]` is a link to your GitHub profile and the words `Lighthouse Labs` are a link to the Lighthouse Labs website.

```markdown
...taken by [Joel](https://github.com/JoelCodes) for the...
```

> #### Instruction
> Commit your changes to Git and push your local changes to GitHub.

Your repo should now look something like the screenshot below. 

![The repository README file with your name filled in and your GitHub profile link included](https://i.imgur.com/4IpL3Wr.png)

> #### Instruction
> Confirm that your changes are reflected on GitHub.

<!-- https://github.com/sam-meech-ward-lighthouse-labs/lighthouse-web-notes/tree/8b7816af8b8ef431735740776b52d10db3210e16 -->

### Creating a Table of Contents Using _Lists_

When we finally add notes to our repository, we want to be able to easily get to a desired folder from the main repository page. For this we can create a table of contents, which will be a list of links to the folders in our repository.

> #### Instruction
> Add an appropriately sized 'Table of Contents' header.

<div></div>

> #### Instruction
> Create a nested list under the header.

Add the following Markdown below the 'Table of Contents' header

```markdown
* Week 1
  * Day 1
```

In the above markdown, we are creating an unordered, bulleted list with the `*` character. This is similar to using the `ul` HTML tag. You may have noticed that the `Day 1` list item is indented. This creates a sub-item in the list (which sometimes results in a different style of bullet for that item).

Markdown lists can also be ordered by preceding each item with a number like so: 

```markdown
1. Item One 
2. Item Two
3. Item Three
```

So we have the list for our table of contents, but we don't have any content to link to yet. Let's create some content within our repository.

> #### Instruction
> Create a directory structure to organize your weekly and daily notes.

* Create a folder in your project folder called `Week_1`
* Create a folder inside the `Week_1` folder called `Day_1`
* Create new Markdown file inside the `Day_1` folder called `What_Should_I_Do_for_Lunch_Tips.md`

In a moment, we will be adding some content to this file relating to the earlier 'What should I do for Lunch?' activity. First, let's link to our new folders from the README. 

> #### Instruction
> Add folder links to the README.

GitHub allows us to use **relative links** like so:

```markdown
* [Week 1](/Week_1)
  * [Day 1](/Week_1/Day_1)
```

No need to link to a full URL! GitHub knows what files and folders you are referring to when you use a relative path.

> #### Instruction
> Commit your changes to Git and push your local changes to GitHub.

Your repo should look something like this:

![The repository README file with a table of contents and folder links added to the file from before](https://i.imgur.com/TzDpTTN.png)

<!-- https://github.com/sam-meech-ward-lighthouse-labs/lighthouse-web-notes/tree/6ffb7b2b0340d4abdb2d4daa485057830da4ea66 -->

### Syntax Highlighting & Code Blocks

Our table of contents is complete! Time to add some content to our first note.

For our first note, we will use part of the 'Tips' section from the earlier 'What should I do for Lunch?' activity.

> #### Instruction
> Add the following paragraphs of text to your `What_Should_I_Do_for_Lunch_Tips.md` file

```markdown
### Tips

Try experimenting with the comparison operators (`<`, `>`, `===`, etc.) in the node REPL, which you can launch using the `node` command in Vagrant.

Work on your code iteratively – that means in small pieces. 

To help you figure out how to use `hungry` and `availableTime` inside your function, try outputting their values to the Terminal as follows.
```

These lines are nice, but it would be great to include the code from that section as well.

```javascript
function whatToDoForLunch(hungry, availableTime) {
  console.log("hungry is", hungry);
  console.log("availableTime is", availableTime);
}
```

Is it possible to format and highlight it nicely like we are seeing here? Absolutely!

You may have noticed that in the 'Tips' text above, some of the words are wrapped by the backtick (\`) character, which makes it `look like this`. In Markdown, the backtick formats text to look like code. It can be used inline like above, or to create a code block.

We can use backticks to designate a code block like so:
   

    ```javascript
    function whatToDoForLunch(hungry, availableTime) {
      console.log("hungry is", hungry);
      console.log("availableTime is", availableTime);
    }
    ```

Markdown code blocks have three backticks at the beginning of the block and three at the end. Like in the example above, you can specify the language of the block so it will be appropriately highlighted.

> #### Instruction
> Add the above markdown code block to the bottom of your `What_Should_I_Do_for_Lunch_Tips.md` file.

<div></div>

> #### Warning
> A gentle reminder to not copy/paste content from Compass into your assignment.

<div></div>

> #### Instruction
> Commit and push your changes.

<div></div>

> #### Instruction
> Go see how it all looks over on GitHub!

That's all for this exercise. 

## Markdown Cheatsheet

If you would like to know more about Markdown and what you can do with it, check out the Markdown Cheatsheet link below.

[Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

## Conclusion

This walkthrough introduced Markdown and reviewed creating a git repo from scratch (and syncing it with GitHub) for the practical purpose of setting up and managing your class notes. 

We encourage you to continue using this repository every week in order to collect class notes for lectures, breakouts and even other learnings such as mentor assistances. Doing this using Markdown will make your more comfortable with a markup language that is commonly used by the developer community. You'll be able to easily write formatted and styled notes while also getting to practice with Git!

## Teacher Notes

Complete version of this project: https://github.com/sam-meech-ward-lighthouse-labs/lighthouse-web-notes
