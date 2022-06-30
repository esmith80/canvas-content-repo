---
uuid: 157681e4-5022-48f8-80d6-3a36c993cd2e
name: 'The Command Line'
duration: 20
questions:
  -
    question: What is the command line? Select the _best_ answer.
    uuid: ad752f58-92f5-4ab3-b5e8-8e8ebd117a38
    outcome: c5391c35-7f2a-492e-96f7-7a2bec7d4ce9
    options_attributes:
      -
        answer: "A text-based interface."
        explanation: "Yes, but you can tell me more!"
      -
        answer: "A tool for navigating, creating, executing, and acting on a computer's files and directories."
        explanation: "Yes, but you can tell me more!"
      -
        answer: "A less graphical and more powerful alternative to Finder or Explorer."
        explanation: "Yes, but you can tell me more!"
      -
        answer: "All of the above."
        explanation: "Like a graphical user interface, the command line is one way that the operating system represents the computer's files, directories, and programs (which are also files) to the user. In fact, the command line is a text-based interface through which one can navigate, create, execute, and act on a computer's files and directories with precision."
        correct: true
      -
        answer: "None of the above."
        explanation: "Unfortunately it is indeed one of the answers provided!"

  -
    question: What is true about the prompt in the terminal? Select the _best_ answer.
    uuid: da4203c7-1901-44b3-9686-c926bb267181
    outcome: 26e53b32-0812-4655-9e7c-8a3f5beb1415
    options_attributes:
      -
        answer: "It is usually denoted by `$`"
        explanation: "Indeed, the `$` is a common character that indicates the prompt. However, what about the other answers?"
      -
        answer: "It awaits input from the user."
        explanation: "Indeed, but what about the other answers?"
      -
        answer: "It usually includes information about the system (the username, the hostname, the current directory, etc.) before a special character"
        explanation: "Yup, but what about the other answers?"
      -
        answer: "All of the above."
        explanation: "Nice! I'm glad you now know what a prompt is, because you'll be using it all the time :)"
        correct: true
      -
        answer: "None of the above."
        explanation: "On the contrary ... "

  -
    question: In the terminal, what does `~` represent?
    uuid: 25b8291e-4b70-4627-b703-404d2110ba80
    outcome: c0763934-4fea-458c-acf1-5fc9cf5d835b
    options_attributes:
      -
        answer: "A symbol preceding a numeric value to indicate that it's approximate."
        explanation: "This is often true for written text, but not so in the terminal."
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
    uuid: e21bac03-eebe-4bc3-83d8-097791d14fee
    outcome: 55cee8a9-66ee-4eb4-b137-9b90fc17db70
    options_attributes:
      -
        answer: "(b) is not a valid command. It will report an error."
        explanation: "It is a valid use of the `ls` command with the options `-l`, `-a`, and `-h` specified."
      -
        answer: "(a) is not a valid command and will report an error. It needs some options passed in, as shown in (b)."
        explanation: "Lots of basic commands like `ls` don't require options (or 'flags') to give a default output. Give it a try in the terminal!"
      -
        answer: "(b) will give more verbose and better formatted output."
        explanation: "Correct! `-lah` is a list of three options (or 'flags') sent to the `ls` command. `-l` shows permissions, size, and other details. `-a` shows all files, even those that start with `.`. Finally, the `-h` command makes the file sizes 'human readable' by showing the size in kilobytes, megabytes, and gigabytes."
        correct: true
      -
        answer: "In the case of (b) the computer will think 'long and hard' before giving us the answer."
        explanation: "Computers can execute commands in milliseconds. It's unecessary for us to tell it to 'give it more thought'." 
      -
        answer: "Both have identical behavior. In other words: the options passed into (b) are not valid and ignored."
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
    uuid: 7cf926ac-581b-41df-9bc6-d58caecd988d
    outcome: 18232d42-88ce-4b60-844b-9b9ece9fc0ae
    options_attributes:
      -
        answer: "No, can't tell by looking at this."
        explanation: "Incorrect. The `cd` command is used to set the `current directory`. By looking at the paths used after each `cd` command, we can deduce the final location."
      -
        answer: "Yes, in the `/cats/sounds` directory."
        explanation: "Incorrect. The next three `cd` commands change the current directory after the first `cd` command."
      -
        answer: "Yes, in the `/cats` directory."
        explanation: "Incorrect. We did set the current directory to `/cats` at one point, but we don't stay there."
      -
        answer: "Yes, first it will check `/cats/sounds`. If the file is not there then it will check `/cats`. Failing that it will finally check `/`."
        explanation: "Incorrect. The `cd` command does not search for files, but rather it sets the *current directory* to the path provided. This answer is much too complicated for this simple list of commands."
      -
        answer: "Yes, in the `/` or root directory."
        explanation: "Correct. The final `cd` changes us back to the root directory. The path `/` is reserved for the root directory, making it a useful shortcut for returning there."
        correct: true

  -
    question: "What does the `man` command do?"
    uuid: d72d22b4-5790-46a4-91a4-45691a2e3671
    outcome: f4cf4d27-b4a8-46c0-b5db-391d7c9d79f4
    options_attributes:
      -
        answer: "It puts the terminal into manual mode, disabling auto-complete and other helpful automation features like it."
        explanation: "There is no such thing as manual mode in the terminal."
      -
        answer: "It switches the terminal between manual and automatic modes depending on which you're in."
        explanation: "No such thing as manual and automatic modes in the terminal."
      -
        answer: "Nothing because it's not a valid command."
        explanation: "Alas, it _is_ a valid command."
      -
        answer: "It clears the terminal screen aka buffer."
        explanation: "No, but `clear` will do that for you."
      -
        answer: "It outputs the manual or documentation for a given command."
        explanation: "Correct! Which means you must pass it the name of a valid command as an argument. Eg: `man ls`."
        correct: true

  -
    question: |
      How many arguments and how many flags are in the following command? Select the _best_ answer.

      ```bash
      tar -cvzf ./archive.tgz ./*.txt
      ```

    uuid: 6690ab1d-013f-4fd4-a350-f4ca05f35f03
    outcome: 51a01baf-8658-4892-9e92-d4f2c6551c4b
    options_attributes:
      -
        answer: "6 arguments and flags."
      -
        answer: "3 arguments and flags."
      -
        answer: "3 arguments, with one of them consisting of 4 different flags."
        explanation: "There are indeed three arguments, the first of which consists of 4 different flags."
        correct: true
      -
        answer: "None of the above."
---

