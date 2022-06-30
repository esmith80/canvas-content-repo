---
uuid: c6bf53bf-cce1-47d0-af6a-c4da1398795c
name: 'Control Structures in Python'
duration: 20
questions:

  -
    question: "In a Python program, a control structure:"
    uuid: ea3f659b-c23f-4b33-ba61-cce4ed0747ea
    outcome: 70471ff7-ff38-469d-bc13-1c0049ac248c
    options_attributes:
      -
        answer: "Defines program-specific data structures."
        explanation: "Incorrect."
      -
        answer: "Manages the input and output of control characters."
        explanation: "Incorrect."
      -
        answer: "Dictates what happens before the program starts and after it terminates."
        explanation: "Incorrect."
      -
        answer: "Directs the order of the execution of statements in the program."
        explanation: "Correct. Control structures determine which statements in a program will be executed and in what order, allowing for statements to be skipped over or executed repeatedly."
        correct: true

  -
    question: "What signifies the end of a statement block or suite in Python?"
    uuid: fde08c38-6286-4582-b5f1-18b8c0c95c7f
    outcome: 3a939798-4e1a-42f4-a38e-48ebfdb3b735
    options_attributes:
      -
        answer: "A line that is indented less than the previous line."
        explanation: "Correct. Blocks are defined by indentation in accordance with the off-side rule. When a statement occurs on a line which is indented less than the previous one, it indicates the end of a block."
        correct: true
      -
        answer: "A comment."
        explanation: "Incorrect. Comments are marked with #."
      -
        answer: "}"
        explanation: "Incorrect. Python uses curly brackets for dictionaries."
      -
        answer: "end"
        explanation: "Incorrect. Python doesn't use this keyword."

  -
    question: "What is the value of this expression: 'a' + 'x' if '123'.isdigit() else 'y' + 'b'"
    uuid: e390a345-1f44-4bd0-9e14-bdc82940cf0e
    outcome: bf60f22a-0638-4acd-890a-158071b0259b
    options_attributes:
      -
        answer: "'axyb'"
        explanation: "Incorrect. The conditional expression has a lower precedence than other operators, so the + operator binds more tightly."
      -
        answer: "'axb'"
        explanation: "Incorrect. The conditional expression has a lower precedence than other operators, so the + operator binds more tightly. To cause the conditional expression to be evaluated first, you would parenthesize as follows: 'a' + ('x' if '123'.isdigit() else 'y') + 'b'"
      -
        answer: "'ab'"
        explanation: "Incorrect. The conditional expression has a lower precedence than other operators, so the + operator binds more tightly."
      -
        answer: "'ax'"
        explanation: "Correct. The conditional expression has a lower precedence than other operators, so the + operator binds more tightly."
        correct: true

  -
    question: "Which type of iteration is the while loop in Python used for?"
    uuid: 0caf5c9d-b8aa-43c5-a638-09b121d29a5b
    outcome: 06127ea5-59e8-4633-9c65-64639c9ca3b5
    options_attributes:
      -
        answer: "definite"
        explanation: "Incorrect. We have a different loop in Python for definite iteration. "
      -
        answer: "indeterminate"
        explanation: "Almost correct. This would probably be an apt description of this type of iteration as well, but not the term that is typically used."
      -
        answer: "discriminant"
        explanation: "Incorrect. It isn’t even an adjective :) much less a description of any type of iteration."
      -
        answer: "indefinite"
        explanation: "Correct. the number of times the loop will be executed is not explicitly specified in advance."
        correct: true
---

