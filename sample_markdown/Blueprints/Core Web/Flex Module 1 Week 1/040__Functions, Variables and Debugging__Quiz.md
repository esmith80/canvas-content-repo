---
name: "Functions, Variables, and Debugging in JavaScript"
uuid: 7f0a4e0e-0121-4c36-9016-ff4ea9eca366
questions:

  -
    question: "The functions `createUser`, or `sendUserData` are examples of which naming convention?"
    uuid: 14f8eb7b-8fd3-452a-9804-591d6a074c3a
    outcome: d7ac7aa0-a8ee-4505-9fc9-8c72cf34a1ac
    options_attributes:
      -
        answer: "Snake case"
        explanation: "Incorrect, snake case looks like `create_user` or `send_user_data`"
      -
        answer: "Camel case"
        explanation: "Correct, this is an example of _lower_ camel case"
        correct: true
      -
        answer: "Quirky quarky"
        explanation: "Incorrect, there's no such convention. Perhaps you were feeling lucky or just curious."
      -
        answer: "Hungarian notation"
        explanation: "Incorrect, Hungarian notation prefixes the variable type as a code (`szName`, or `fnSendUserData`)"

  -
    question: "What is meant by type coercion?"
    uuid: 2000f8b6-e36d-44e7-8e11-1897faf27e1e
    outcome: 4c29359f-699f-4ba0-a8e0-0715966f8a53
    options_attributes:
      -
        answer: "When all data types are treated equally"
        explanation: "Incorrect, data types are not 'treated equally', however _coerced_ in some situations"
      -
        answer: "When the operands of an operator are different types, one of them will be converted to an _equivalent_ value of the other operand's type"
        explanation: "Correct, an example is the comparison operator `==` in JavaScript"
        correct: true
      -
        answer: "When variables of different data types cannot be compared with one another"
        explanation: "Incorrect, JavaScript's `==` operator automatically coerces variables of different types"

  -
    question: |
      What would the following JavaScript code evaluate to? Why?

      ```javascript
      '0' == false
      ```
    uuid: b71ce32d-9737-471b-919e-0cb8c706ffea
    outcome: 00b10dea-7878-46cb-a98c-235362161c6b
    options_attributes:
      -
        answer: "`true`"
        explanation: "Correct, `'0'` and `false` would be coerced to a common type and evaluate to be equal (or `true`)"
        correct: true
      -
        answer: "`false`"
        explanation: "Incorrect, the types would be coerced"
      -
        answer: "TypeError"
        explanation: "Incorrect, type coercion would avoid an error in this situation"

  -
    question: |
      Would the following JavaScript code evaluate to true or false? Why?

      ```javascript
      '1' === 1
      ```
    uuid: 697d8e0c-f0c2-4c65-b03e-96314b0aefce
    outcome: 00b10dea-7878-46cb-a98c-235362161c6b
    options_attributes:
      -
        answer: "`false` because the variable _types_ are different"
        explanation: ""
        correct: true
      -
        answer: "`true` because types are coerced automatically"
        explanation: "Incorrect, the `===` compares the values _and_ types of the operands"
      -
        answer: "`true` because types are not compared in this situation"
        explanation: "Incorrect, the `===` compares the values _and_ types of the operands"
---
