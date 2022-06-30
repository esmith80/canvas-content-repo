---
uuid: 9ec9dbff-c2ac-4575-a08b-29b74aab330e
duration: 60
allow_submissions: true
tags: focal
name: Pair Programming - Raisin' Arizona
bg_image_url: https://d.pr/i/pZkHxO+
bg_image_darkness: 0.7,0.5
---

> #### Danger
>
> This is a **Pair Programming** activity. It is meant to be tackled and completed with your assigned partner at a designated time.

Details about timing and your partner will be provided by our team via Discord. Do not work on this challenge solo.

## Pair Programming Setup

This is your first Pair Programming activity of bootcamp! Once you've been partnered up, you and your partner can get set up in your Zoom room. To be able to code together, we suggest using [VS Code LiveShare](/6162fd0e-b648-4d9c-a679-2a7032bf1edd).

Once VS Code LiveShare is installed, we can set up our file for the exercise.

> #### Instruction
>
> Create a `raisin.js` file inside our `objects` directory.

You'll need to choose one person to be the "host" for the session. That person can then set up to share their session.

> #### Instruction
>
> Follow [this tutorial on "Sharing and Joining a Session"](https://scotch.io/tutorials/getting-started-with-live-coding-in-visual-studio-code-with-live-share#toc-sharing-and-joining-a-session).

When both partners are in the session, you're ready to start pair programming! Remember to designate a driver and a navigator, and to switch roles frequently.

## Exercise

In this exercise, you will write a function that identifies whether a _supposedly_ chocolate chip cookie also has _raisins_ in it. Your function, `raisinAlarm`, will receive a cookie which is an array of chocolate chips (`"🍫"`). However, there is a chance that there might be a pesky raisin in the array as well (`"🍇"`). Your function must search through the array to see whether or not a raisin is present.

If your function detects a raisin, it should return `"Raisin alert!"`. If no raisin is present, your function should return `"All good!"`.

### Starter Code

```javascript
const raisinAlarm = function (cookie) {
  // Put your solution here
};

console.log(raisinAlarm(["🍫", "🍫", "🍇", "🍫"]));
console.log(raisinAlarm(["🍫", "🍇", "🍫", "🍫", "🍇"]));
console.log(raisinAlarm(["🍫", "🍫", "🍫"]));
```

### Expected Output

```terminal
Raisin alert!
Raisin alert!
All good!
```

> #### Instruction
>
> Complete the function named `raisinAlarm` that will receive an array of strings and return the correct assessment of raisin presence.

## Stretch

As a stretch exercise, see if you can make a new function that supports _arrays of arrays_. Your function should return an array of responses, instead of a single response. You can add this new function to your existing `raisin.js` file.

### Starter Code

```javascript
const raisinAlarmArray = function (cookies) {
  // Put your solution here
};

console.log(
  raisinAlarmArray([
    ["🍫", "🍫", "🍇", "🍫"],
    ["🍫", "🍇", "🍫", "🍫", "🍇"],
    ["🍫", "🍫", "🍫"],
  ])
);
```

### Expected Output

```terminal
["Raisin alert!", "Raisin alert!", "All good!"]
```

> #### Instruction
>
> Submit Your Work

Each pair programming partner should submit their _own_ gist.

- Browse to [gist.github.com](https://gist.github.com/) and create a new gist.
- Copy-and-paste your code into the form
- Name the gist and the file appropriately and click `Create secret gist`.
- Finally, mark this activity as completed (at the bottom of this page) and please copy/paste the _entire_ browser URL for your gist (from _gist.github.com_) into the text field.
