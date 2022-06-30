---
uuid: 18f313d6-b778-11ec-b909-0242ac120002
name: 'Git and Source Control'
duration: 15
questions:

  -
    question: "In git, what is a \"staging area\"?"
    uuid: e2eddc93-b2d9-4110-80c5-f9610b73e3e3
    outcome: c072534c-75db-45b4-8494-aacb5187cc4a
    options_attributes:
      -
        answer: "Where files are grouped together before committing."
        explanation: "Correct! Entering `git add filename.js` will add the specified file to the staging area, where it will wait until you are ready to commit, or you make further changes, removing it from the staging area."
        correct: true
      -
        answer: "Where committed files are stored before pushing."
        explanation: "Incorrect. Files are moved out of the staging area once they are committed."
      -
        answer: "Where files are stored after you pull them from a remote repository."
        explanation: "Incorrect. When pulling from a remote repo, the files will either be merged directly into your codebase, or staged for conflicts."
      -
        answer: "None of the above."
        explanation: "Incorrect."

  -
    question: "You have just finished some work (adding a new column to your User table), and want to upload your changes in `myAwesomeApp.js` to GitHub. Which command, or commands, will you use? There may be more than one correct answer below."
    uuid: c642bf55-f3fd-4151-a4c5-121c339f8cfe
    outcome: 2cc214c5-7604-489d-a331-7d8d2e043806
    options_attributes:
      -
        answer: |
          ```terminal
          git push all files
          ```
        explanation: "Incorrect. This is not a valid git command."
      -
        answer: |
          ```terminal
          git add myAwesomeApp.js
          ```
          ```terminal
          git commit -m "added last_name column to the User table"
          ```
          ```terminal
          git push
          ```
        explanation: "Correct! You first add your file to the staging area, then commit the staged file with a descriptive commit message, then push."
        correct: true
      -
        answer: |
          ```terminal
          git commit -am "added last_name column to the User table"
          ```
          ```terminal
          git push
          ```
        explanation: "Correct! The `-am` argument is a shorthand way to add *all* changed files, and then immediately commit them with your descriptive commit message. Be careful with this though, you may accidentally commit files you didn't intend to commit!"
        correct: true
      -
        answer: |
          ```terminal
          git add myAwesomeApp.js
          ```
          ```terminal
          git commit -m "added last_name column to the User table"
          ```
        explanation: "Almost! It's missing the last step which is to `git push` the changes to the remote repository on GitHub."
      -
        answer: "None of the above."
        explanation: "Incorrect."

  -
    question: "You've accidentally added `mySecretPasswords.js` to the staging area! You definitely don't want that file uploaded to GitHub for the world to see. Luckily you haven't committed yet. What is the correct command to remove this file from the staging area?"
    uuid: 89af3599-4b17-4f4e-9f63-75e4b5db4b77
    outcome: 9015cd3c-71eb-4e6c-8b0b-31374e1b67fb
    options_attributes:
      -
        answer: |
          ```terminal
          git reset
          ```
        explanation: "Incorrect. Although `git reset` would remove `secretPasswords.js` from staging, it would also remove all other files you've added!"
      -
        answer: |
          ```terminal
          git remove secretPasswords.js
          ```
        explanation: "Incorrect. Remove is not a valid git command."
      -
        answer: |
          ```terminal
          git reset secretPasswords.js
          ```
        explanation: "Correct! `git reset` with a filename will remove that file from the staging area."
        correct: true
      -
        answer: |
          ```terminal
          git pull secretPasswords.js
          ```
        explanation: "Incorrect. While `git pull` is a valid command, it will try and download any remote changes from the remote repository. It also doesn't take a file name as an argument."

  -
    question: "What is the difference between GitHub and git?"
    uuid: 89a2615a-9ebb-4b57-8561-01b015ab05b2
    outcome: b78cce52-e7c4-4c31-89c4-c56a8001ce65
    options_attributes:
      -
        answer: "Git is the source control tool and GitHub is the company that created and maintains it."
        explanation: "Incorrect. GitHub didn't create git, but has created an entire business around git. It provides hosting of and social features for git."
      -
        answer: "Git is short for GitHub."
        explanation: "Incorrect. They are two very different things."
      -
        answer: "GitHub is a web company that provides hosting and additional social and collaboration features for git, the version control software."
        explanation: "Nailed it! GitHub came much later, and fun fact: its web application is built with Ruby on Rails."
        correct: true
      -
        answer: "Git is a web company that provides hosting and additional social and collaboration features for GitHub, the version control software."
        explanation: "Incorrect! It's actually the reverse."
      -
        answer: "None of the above."
        explanation: "Incorrect. One of them is!"

  -
    question: "Which of the following statements about the `.git` folder in a repository is true?"
    uuid: 1a77ca1c-a86f-430c-87ca-b219c1e0cc4a
    outcome: 1542d5ee-d49d-4b3c-97fd-81d023183ce9
    options_attributes:
      -
        answer: "It's a hidden folder managed by git via the `git` commands."
        explanation: "Correct, but the other answers are also correct."
      -
        answer: "We don't typically need (or should have) to modify its contents directly."
        explanation: "Correct, but the other answers are also correct."
      -
        answer: "It contains the entire history and all details of the files in the repository."
        explanation: "Correct, but the other answers are also correct."
      -
        answer: "There is only one of these in each git repository, at the root (top most) directory for that repository."
        explanation: "Correct, but the other answers are also correct."
      -
        answer: "All of the above."
        explanation: "Correct! Every repository has a single, hidden `.git` folder containing the full database of every commit from the repo's inception, and it's managed using the `git` commands."
        correct: true
---
