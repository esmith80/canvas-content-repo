---
uuid: d5c153ed-ef80-4ad8-a0f5-5b84d1399ca5
duration: 30
allow_submissions: true
type: Problem
tags: focal,node
outcomes:
  - 7c70fed0-8ac1-441e-be1a-231370a536c3
  - 2a514ea4-0516-4124-9dba-de7cb633ba92
  - e571422a-4423-491e-a81c-178145a0c5ec
  - e3abe961-dc46-4246-873a-e63675e378ab
  - 68766b84-eb9a-44ab-87a9-29207ec8f60e
  - ef017e9e-70e1-4a67-9c43-ee7dad369caa
  - 96daf2a9-9a12-469d-826e-3ac4e3c3c1ea
  - 0b0999a8-a16a-48c4-bb50-c9433ab95bc5
  - 5f66ee62-ea91-4697-917e-4abb014554d9
---

In this activity we're going to review the fundamental programming concepts of variables, types, operators and conditionals while solving a small problem involving conditional statements.

## Challenge
Your stomach grumbles. Breakfast feels like a distant memory and you are about to pick up lunch. But before you do, trying to capture every opportunity you can to write some code, you decide to build a little program to help you choose where you'll eat lunch.

You realize this decision depends on two things. First - if you're hungry or not; second - how much time you have. You want your program to tell you to wait until you're hungry if you're not. If you are hungry, you want your program to do one of the following three things.

* If you have less than 20 minutes, you want your program to tell you to pick up a snack or grab something you have ready at home.
* If you have at least 20 minutes but no more than 30 (because you've been working hard and are ahead of schedule), you want your program to tell you that you deserve a break and should take time to cook a tasty meal.
* If you have more than 30 minutes, you want your program to remind you that this is an intense program after all and you should probably reconsider.

### Steps

> #### Instruction
> Clone the gist (if you haven't already)

If you haven't already done so in the [previous exercise](/6e0e429a-670e-4acb-9dd9-a3b226209b20), **fork and clone [this gist](https://gist.github.com/NimaBoscarino/068a5a51d2ee19604a00283af7deee4f)** into your `/vagrant/focal` directory, within your Vagrant dev environment.

> #### Instruction
> Run `lunch.js`

Run the cloned code using the `node lunch.js` command in your Terminal (from within the gist/repo directory) and notice that the current output is incorrect.

```terminal
node lunch.js
I'm hungry and I have 20 minutes for lunch.
I don't know what to do!
--
I'm hungry and I have 50 minutes for lunch.
I don't know what to do!
--
I'm not hungry and I have 30 minutes for lunch.
I don't know what to do!
--
I'm hungry and I have 15 minutes for lunch.
I don't know what to do!
```

Now here's the fun part...

> #### Instruction
> Implement the function :)

Write the conditionals (that is, `if` statements) that take care of what you should do for lunch and output the instructions to the Terminal. You should do this inside the `whatToDoForLunch` function (between the curly braces).

```javascript
function whatToDoForLunch(hungry, availableTime) {
  // Write your code here
}
```

> #### Instruction
> And finally, **refactor!** (as needed)

Once your program works correctly, refactor your code to make it cleaner. Check with your peers and/or your mentors to see how you might do that!

### Tips

* It may have been a while since you've completed the fundamentals of programming module in the Prep Course, in which case you may consider reviewing [how to write conditional statements](/ba6a4409-2a1b-413e-836a-11f3d05fc814) in JavaScript.
* Recall what we've learned about values, types, operators, conditionals and functions in the Prep Course. You don't have to use all these JavaScript features to solve this problem, but you'll need to understand them. If you're stuck, try experimenting with the comparison operators (`<`, `>`, `===`, etc.) in the node REPL, which you can launch using the `node` command in Vagrant, to help you come up with the conditions you'll need.
* Work on your code iteratively – that means in small pieces. Start by checking whether you're hungry, make sure that part works, then add the checks for how much time you have one by one.
* To help you figure out how to use `hungry` and `availableTime` inside your function, try outputting their values to the Terminal as follows:

```javascript
function whatToDoForLunch(hungry, availableTime) {
  console.log("hungry is", hungry);
  console.log("availableTime is", availableTime);
}
```

## Complete Assignment

> #### Instruction
> Commit and push your work. 

From within the project folder, in your Vagrant, you'll go through the following commands/workflow:

```terminal
git add lunch.js
```

```terminal
git commit -m "Some important context here"
```

```terminal
git push

Counting objects: 3, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 332 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
To git@gist.github.com:somecrazystring.git
   bf5c560..473adb3  master -> master
```

> #### Instruction
> Lastly, mark this activity as completed. Congrats!

You'll be required to paste in your secret gist's URL in order to mark this activity as completed.
