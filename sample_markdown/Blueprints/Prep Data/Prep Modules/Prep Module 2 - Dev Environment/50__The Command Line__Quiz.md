---
uuid: 3754d564-9832-4eb3-b0dc-c1fb980d8584
name: 'The Command Line'
duration: 20
questions:
  -
    question: What is the command line? Select the _best_ answer.
    uuid: 3790fd6a-945a-42b0-9942-fb7f38c3d4a9
    outcome: ce47a88b-25f6-4112-acae-535f13892191
    options_attributes:
      -
        answer: "A text-based interface."
        explanation: "Yes, but you can tell me more!"
      -
        answer: "A tool for navigating, creating, executing, and acting on a computer's files and directories."
        explanation: "Yes, but you can tell me more!"
      -
        answer: "A less graphical and more powerful alternative to the Finder or the Explorer."
        explanation: "Yes, but you can tell me more!"
      -
        answer: "All of the above."
        explanation: "Correct! Like a graphical user interface, the command line is one way that the operating system represents a computer's files, directories, and programs (which are also files) to the user. In fact, the command line is a text-based interface through which one can navigate, create, execute, and act on a computer's files and directories with precision."
        correct: true
      -
        answer: "None of the above."
        explanation: "Unfortunately it is indeed one of the answers provided!"

  -
    question: What is true about the prompt in the terminal? Select the _best_ answer.
    uuid: 15abf98b-4e66-4f42-ab33-1a0f77800128
    outcome: 03801caa-bec4-4014-8438-ea4b8ae9ed75
    options_attributes:
      -
        answer: "It is usually denoted by `$`"
        explanation: "Indeed, the `$` is a common character that indicates the prompt. However, what about the other answers?"
      -
        answer: "It awaits an input from the user."
        explanation: "Indeed, but what about the other answers?"
      -
        answer: "It usually includes information about the system (the username, the hostname, the current directory, etc.) before a special character."
        explanation: "Yup, but what about the other answers?"
      -
        answer: "All of the above."
        explanation: "Nice! We're glad you now know what a prompt is because you'll be using it all the time :)"
        correct: true
      -
        answer: "None of the above."
        explanation: "On the contrary,... "

  -
    question: In the terminal, what does `~` represent?
    uuid: 94147eb4-7be1-4f99-98c4-a6025f8cf778
    outcome: 447a2f5d-5c95-4fa1-9e98-9a9ef5139031
    options_attributes:
      -
        answer: "A symbol preceding a numeric value indicating that it is approximate."
        explanation: "This is often true for written text, but not in the terminal."
      -
        answer: "The current user's home directory."
        explanation: "If you type in something like `cd ~` in the terminal, you're saying 'take me to my home directory'."
        correct: true
      -
        answer: "The root directory."
        explanation: "The root directory is represented by a `/`. Eg: `cd /`."
      -
        answer: "The present working directory."
        explanation: "The present working directory or pwd is denoted by a `.`. Eg: `cat ./hello.txt` will run `cat` on the file `hello.txt` in the current directory."
      -
        answer: "None of the above."

  -
    question: "What is the difference between running a) `ls` vs b) `ls -lah`?"
    uuid: f52d083b-032b-4a87-805b-e94bd71b04ce
    outcome: a6b4f41e-6101-46e6-8939-412e2cfbe501
    options_attributes:
      -
        answer: "(b) is not a valid command. It will report an error."
        explanation: "It is a valid use of the `ls` command with the options `-l`, `-a`, and `-h` specified."
      -
        answer: "(a) is not a valid command and will report an error. It needs some options passed in, as shown in (b)."
        explanation: "Lots of basic commands like `ls` don't require options (or 'flags') to give the default output. Give it a try in the terminal!"
      -
        answer: "(b) will give more verbose and a better-formatted output."
        explanation: "Correct! `-lah` is a list of three options (or 'flags') sent to the `ls` command. `-l` shows permissions, size, and other details. `-a` shows all files, even those that start with `.`. Finally, the `-h` command makes the file sizes 'human-readable' by showing the size in kilobytes, megabytes, and gigabytes."
        correct: true
      -
        answer: "In the case of (b), the computer will think 'long and hard' before giving us the answer."
        explanation: "Computers can execute commands in milliseconds. We don't have to tell it to 'give it more thought'." 
      -
        answer: "Both have identical behavior. In other words, the options passed into (b) are not valid and ignored."
        explanation: "The `ls` command does indeed take in those options (or 'flags'). Give them a go in the terminal!"

  -
    question: |
      After the following commands are executed one after the other, can we deduce where the system will look for `meow.txt`, and if so, where?

      ```bash
      $ cd /cats/sounds
      $ cd ..
      $ cd sounds
      $ cd /
      $ cat meow.txt
      ```
    uuid: 09338b9b-8cb4-44b2-bc2f-74f210a6f6d9
    outcome: 871d313a-8217-4ab8-8a03-b6c21c4cb492
    options_attributes:
      -
        answer: "No, we can't tell by looking at this."
        explanation: "Incorrect. The `cd` command is used to set the `current directory`. By looking at the paths used after each `cd` command, we can deduce the final location."
      -
        answer: "Yes, in the `/cats/sounds` directory."
        explanation: "Incorrect. The next three `cd` commands change the current directory after the first `cd` command."
      -
        answer: "Yes, in the `/cats` directory."
        explanation: "Incorrect. We did set the current directory to `/cats` at one point, but we don't stay there."
      -
        answer: "Yes, first it will check `/cats/sounds`. If the file is not there then it will check `/cats`. Failing that it will finally check `/`."
        explanation: "Incorrect. The `cd` command does not search for files, but rather it sets the *current directory* to the path provided. This answer is way too complicated for this simple list of commands."
      -
        answer: "Yes, in the `/` or root directory."
        explanation: "Correct. The final `cd` changes us back to the root directory. The path `/` is reserved for the root directory, making it a useful shortcut for returning there."
        correct: true

  -
    question: "What does the `man` command do?"
    uuid: bcf5ca2b-e789-4aba-8912-95b4bc971550
    outcome: fcf736cb-07bf-4240-932d-766e0d4f0e4c
    options_attributes:
      -
        answer: "It puts the terminal into a manual mode, disabling auto-complete and other similar helpful automation features."
        explanation: "There is no such thing as a manual mode in the terminal."
      -
        answer: "It switches the terminal between manual and automatic modes depending on which you're in."
        explanation: "There's no such thing as manual and automatic modes in the terminal."
      -
        answer: "Nothing because it's not a valid command."
        explanation: "Alas, it _is_ a valid command."
      -
        answer: "It clears the terminal screen aka buffer."
        explanation: "No, that's what `clear` does."
      -
        answer: "It outputs the manual or documentation for a given command."
        explanation: "Correct! Which means you have to input the name of a valid command as an argument. Eg: `man ls`."
        correct: true

  -
    question: |
      How many arguments and how many flags are there in the following command? Select the _best_ answer.

      ```bash
      tar -cvzf ./archive.tgz ./*.txt
      ```

    uuid: f173afef-754d-46f6-a168-7ec08b9a7c31
    outcome: 0d1347a9-4dca-4f0a-aa2a-fd407fd2a96d
    options_attributes:
      -
        answer: "6 arguments and flags."
      -
        answer: "3 arguments and flags."
        explanation: "Almost correct. But it can be specified in more detail."
      -
        answer: "3 arguments, with one of them consisting of 4 different flags."
        explanation: "There are indeed three arguments, the first of which consists of 4 different flags."
        correct: true
      -
        answer: "None of the above."
---
