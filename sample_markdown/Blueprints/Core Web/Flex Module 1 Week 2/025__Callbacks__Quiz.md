---
name: "Callbacks"
uuid: 1c878c8e-b3f0-4485-809f-935ab31d7f2a
questions:

  -
    question: "What is a Higher-order function?"
    uuid: 0943f9e6-1431-4fd3-a27e-f4ffb1b40001
    options_attributes:
      -
        answer: "A function that is built into the language, such has Array.map"
        explanation: "Built-in functions may or may not be higher-order."
      -
        answer: "A function that is very complex"
        explanation: "Incorrect. Higher-order functions can be quite simple"
      -
        answer: "A function that calls other functions"
        explanation: "Incorrect. While Higher-order functions could call other functions, that ability isn't what makes them unique. Any function can call other functions by their name"
      -
        answer: "A function that takes a function as an argument, or returns a function as a result"
        explanation: "Correct. Higher-order functions make use of other functions either as arguments or by returning them"
        correct: true

  -
    question: "What is the rationale behind using Higher-order functions?"
    uuid: 41379d6d-deef-4f0b-a0b0-06b4d348c6cf
    options_attributes:
      -
        answer: "It's pretty fancy programming. Your peers will be impressed"
        explanation: "Incorrect. While higher order functions are pretty cool, they're worth more than the prestige of your peers"
      -
        answer: "They allow for creation of more powerful and generalized functions"
        explanation: "Correct. A Higher-order function's job is reduced in scope when you allow it to interact with other functions"
        correct: true
      -
        answer: "They make code easier to read and debug"
        explanation: "Incorrect. While this is somewhat the case, it is not the main purpose in using Higher-order functions"
      -
        answer: "Higher-order functions are treated by the language as first-class citizens"
        explanation: "Incorrect. All functions are first class objects in JavaScript"
      -
        answer: "All of the above"
        explanation: "Incorrect. There is only one answer in this set which should be considered accurate"


  -
    question: "What is an anonymous function?"
    uuid: f98b67a5-b102-4215-9783-5368cd6eb227
    options_attributes: 
      - 
        answer: "All arrow functions are anonymous functions"
        explanation: "While this is entirely true, it does not help us define what anonymous functions are. There is more to anonymous functions than just arrow functions, which are a relatively new construct in JavaScript."
      -
        answer: "A function that is built into Javascript, such as `toString()` or `console.log()`"
        explanation: "Incorrect. Javascript's built-in functions and utilities are not considered anonymous functions."
      -
        answer: "A function that gets returned by another function, but isn't assigned to a variable"
        explanation: "Incorrect. While a function could return an anonymous function, not being assigned to a variable doesn't necessarily make it anonymous"
      -
        answer: "A nameless function defined inline or assigned to a variable. It may or may not be used as a callback function"
        explanation: "Correct. Anonymous functions can be assigned to variables or simply passed in to another function directly (inline)"
        correct: true
      -
        answer: "A nameless function defined inline or assigned to a variable and passed in as a callback function into another function"
        explanation: "Close! However, anonymous functions don't always need to be used as callback functions. They are typically though."
      

---
