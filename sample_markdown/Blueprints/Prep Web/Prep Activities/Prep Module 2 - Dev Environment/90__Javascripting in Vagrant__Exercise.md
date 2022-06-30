---
uuid: 108d698f-0761-4cdb-9d74-243d72d2025a
name: 'Javascripting in Vagrant'
type: 'Assignment'
duration: 180
milestone: true
outcomes:
  # vm
  - e2be0620-203c-4fa3-9211-8d18800f2777
  # shell
  - 5f0c25d7-a183-4e7e-a6be-67173ed11502
  - 0c67b811-5dc4-405d-bf54-19377570b2d1
  # js - intro
  - 5f66ee62-ea91-4697-917e-4abb014554d9
  # js - variables
  - d01f8c63-cb3e-4691-a6bc-266796a3ea87
  - 69b5589c-b8f5-4536-8186-40de10a4b40a
  # js - strings
  - df38dce5-d442-4ecb-af39-75536907ad00
  # js - strings length
  - f7355583-424f-40ad-85ed-fbee6694c38e
  # js - revising strings
  - c12d44c2-c848-4a96-b41b-222e46e4c07e
  - d10564b1-acee-4e8a-8d56-f042e90aa652
  # js - numbers
  - 6d04fb30-9184-44f4-a4d1-51998d1bdb5d
  - a9016d75-c2ce-4cef-8c2f-3017318425b1
  - 43f47488-eedd-4cfd-97cc-0285b968869c
  # js - rounding numbers
  - 6c0ded1d-cf0f-46e2-9a48-ff6e74d00dc9
  - c665cbb9-b722-4a95-b3d3-90e8935250a2
  # js - number-to-string
  - 4721d07d-a1d1-4caa-9853-a386fa3080c9
  # js - for-loop
  - 789a1453-24cf-4195-843c-60eb8d07eb92
  - 7a9982bc-74d2-403f-88b6-31e35db4573c
  # js - arrays
  - b66b6d8f-d177-4ce8-b596-ab2707f3824b
  - d48903f3-0395-4a88-957d-fc4f9ea274a3
  # js - array-filtering
  - f3a5131b-ac89-47c3-8873-d43480288400
  # js - looping through arrays
  - 5128eee5-370e-494c-805a-e17500ba8032
  - 20c81186-140f-4cd4-85ea-880e12c7c465
---

## Goal

It's time to start becoming comfortable using your VM and writing code using the same workflow and tools that you would as a developer and in our bootcamp. In the process, you'll also start learning some basic JavaScript and Node development using NodeSchool's Javascripting exercises.

## Get Started

Okay, let's start by `ssh`ing into our Vagrant machine.

As a reminder, open up your Terminal application, `cd` into the `lighthouse` folder you made in the [VM Setup](/f252cd05-4b9d-4a70-89d4-40f5dcc2d553) activity, then run the `vagrant up` command followed by `vagrant ssh`. That is unless you're just continuing on from before and are already in Vagrant.

The `javascripting` command line app (brought to you by the lovely folks at NodeSchool) is *not installed* on your VM. To install it, run `npm install -g javascripting` in your terminal.  

You can now follow their ["Run the workshop"](https://github.com/sethvincent/javascripting#run-the-workshop) instructions from within your Vagrant VM.

**Only work up until and including LOOPING THROUGH ARRAYS**

**IMPORTANT:** As the first challenge suggests, create a subdirectory named `javascripting` to store your javascript files but make sure you create it within the `/vagrant`  directory from inside Vagrant.

**Tips:**

* Be sure to `cd` into your newly created `javascripting` directory and make sure files are getting created there.
* Use the `pwd` and `ls -al` commands to check where you are and that the right files are showing up in there.
* Instead of using the `nano` command line editor as they show in their gif, you should be opening up your entire `javascripting` folder in VS Code from your host machine.
