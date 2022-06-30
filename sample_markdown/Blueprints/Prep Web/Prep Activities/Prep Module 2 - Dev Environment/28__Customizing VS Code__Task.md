---
uuid: 67e8543a-0bc0-4b64-a311-b349497c2fb0
type: 'Task'
duration: 15
outcomes:
  - 4948d2ea-d853-4aa4-a734-455a49487245
  - 05a2ef45-aab6-4af0-906c-3cf7173e6337
  - 67d48162-5135-483b-ac63-a2d406578825
  - 4b07762b-27ed-4169-8173-9f17b5b6134b

---

It is easy to configure Visual Studio Code through its various settings. Nearly every part of VS Code's editor, user interface, and functional behavior has options you can modify.

## VSCode Extensions

The features that Visual Studio Code includes out-of-the-box are just the start. VS Code extensions let you add languages, debuggers, and tools to your installation to support your development workflow. VS Code's rich extensibility model lets extension authors plug directly into the VS Code UI and contribute functionality through the same APIs used by VS Code.  This topic explains how to find, install, and manage VS Code extensions.

> #### Instruction
> Open the Extensions view in VS Code.

We can browse and install extensions from within VS Code. Bring up the Extensions view by clicking on the Extensions icon in the **Activity Bar** on the side of VS Code or the **View: Extensions** command <kbd>Shift + Cmd/Ctrl + X</kbd>.

<!-- (`Shift-Command-X`, `⇧⌘X`). -->

![Extensions view icon](https://d.pr/i/YQhARA+)

This will show us a list of the most popular VS Code extensions on the [VS Code Marketplace](https://marketplace.visualstudio.com/VSCode).

Each extension in the list includes a brief description, the publisher, the download count and a five star rating. We can click on the extension item to display the extension's details page where we can learn more.

## Installing the EditorConfig Extension

> #### Instruction
> In the extensions search bar, on the top left of the screen, search for "EditorConfig".

[EditorConfig](http://editorconfig.org/) is a project to help all developers have consistent code formatting even if they use different code editors. All of the popular code editors support this file format, either by default or through the help of extensions/packages.

> #### Instruction
> Install the **EditorConfig For VS Code** extension.

Click the **Install** button and after a successful install, we'll see a **Reload** button. Clicking on this will restart VS Code to enable the new extension.

![EditorConfig](https://d.pr/i/TFdZju+)

Later on, we'll download and install an `editorconfig` file that will set the indentation rules when working on Lighthouse projects.

## Configure VS Code

VS Code's default settings are not bad, but we can make the editor easier to use by tweaking a few of them. Nearly every part of VS Code's editor, user interface, and functional behavior has options you can modify.

![VS Code settings](https://code.visualstudio.com/assets/docs/getstarted/settings/hero.png)

VS Code provides two different scopes for settings:

* **User Settings** - Settings that apply globally to any instance of VS Code you open.
* **Workspace Settings** - Settings stored inside your workspace and only apply when the workspace is opened.

> #### Warning
Be sure to make any changes to `User Settings`, not to `Workspace Settings`.

## Creating Settings

To open the user and workspace settings, use the following VS Code menu command:

* On Windows/Linux - **File** > **Preferences** > **Settings**
* On macOS - **Code** > **Preferences** > **Settings**

> #### Note
> We can also open the Settings editor from the **Command Palette** (<kbd>Cmd/Ctrl + P</kbd>) with **Preferences: Open Settings** or use the keyboard shortcut (<kbd>Cmd/Ctrl + ,</kbd>).

## Settings Editor

When we open the settings editor, we can search and discover settings we are looking for. When we search using the Search bar, it will not only show and highlight the settings matching our criteria, but also filter out those which are not matching. This makes finding settings quick and easy.

![Settings Search](https://code.visualstudio.com/assets/docs/getstarted/settings/settings-search.png)

> #### Note
> VS Code extensions can also add their own custom settings and they will be visible under an **Extensions** section.

## Editing settings

Each setting can be edited by either a **checkbox**, an **input** or by a **drop-down**. Simply edit the text or select the option you want to change to the desired settings.

![Edit a Setting](https://code.visualstudio.com/assets/docs/getstarted/settings/settings-edit.png)


### Tab Size

In most of our code files, when we use the <kbd>Tab</kbd> key, VS Code will convert that into a number of normal spaces. By default, this number is 4, but that's too much space. We're going to reduce that space a little bit to make our code a bit easier to read.

> #### Instruction
> Set the tab size to `2`.

* Search for `tab size`.
* Change value from `4` to `2`.

### Highlight Modified Tabs

When we make a change to a text file, the changes are not automatically saved, we are responsible for saving the changes manually. So we want VS Code to make it obvious when we have a file with changes that hasn't been saved yet. 

> #### Instruction
> Set the `highlightModifiedTabs` to `true`.

* Search for `highlightModifiedTabs`.
* Make sure the check box is checked. 

You can safely close the settings tab after changing the settings.

## Conclusion

In this exercise we learned about two different ways of customizing VS Code, by installing extensions and changing the settings. We installed the `EditorConfig` extension and changed a couple of settings. Now we will have an easier time sharing code and collaborating with other people that have the same settings.

## Teacher Notes

https://code.visualstudio.com/docs/
https://github.com/Microsoft/vscode-docs/blob/master/docs/getstarted/settings.md

Replace the contents of the file with the following (copy and paste it from here instead of typing it out manually to avoid any mistakes):

```javascript
{
  "auto_complete": true,
  "auto_complete_commit_on_tab": true,
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
  "highlight_modified_tabs": true,
  "highlight_line": true,
  "default_encoding": "UTF-8",
  "bold_folder_labels": false,
  "folder_exclude_patterns": [".svn", ".git", ".hg", "CVS", "tmp", "node_modules", ".sass-cache"],
  "file_exclude_patterns": ["*.log"],
  "ignored_packages":
  [
    "Vintage"
  ]
}
```

```
// Not default:

"editor.tabSize": 2,
// Controls whether a top border is drawn on modified (dirty) editor tabs or not.
"workbench.editor.highlightModifiedTabs": true,
// Configure glob patterns for excluding files and folders. For example, the files explorer decides which files and folders to show or hide based on this setting. Read more about glob patterns [here](https://code.visualstudio.com/docs/editor/codebasics#_advanced-search-options).
  "files.exclude": {
    "**/.git": true,
    "**/.svn": true,
    "**/.hg": true,
    "**/CVS": true,
    "**/.DS_Store": true,
    "**/node_modules": true, 
    "**/.sass-cache": true,
    "**/*.log": true
  },


// Default:

// Insert spaces when pressing `Tab`. This setting is overridden based on the file contents when `editor.detectIndentation` is on.
"editor.insertSpaces": true,
// Remove trailing auto inserted whitespace.
"editor.trimAutoWhitespace": true,

// Controls how the editor should render the current line highlight.
//  - none
//  - gutter
//  - line
//  - all: Highlights both the gutter and the current line.
"editor.renderLineHighlight": "line",

// The default character set encoding to use when reading and writing files. This setting can also be configured per language.
"files.encoding": "utf8",
```
