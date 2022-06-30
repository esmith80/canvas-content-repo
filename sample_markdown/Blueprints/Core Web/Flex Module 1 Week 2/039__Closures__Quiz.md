---
uuid: 426616e9-7f1f-4cd3-95b2-98eb2473ac3f
duration: 20
stretch: true
questions:

  -
    question: "Which variables are accessible in Lexical Scope?"
    uuid: 2f4aa61b-d4dc-4528-a43a-161bbdd2e04f
    outcome: 79f28415-ffe3-4d78-b78f-ab987ebe0240
    options_attributes:
      -
        answer: "A function can access variables defined in nested / child functions"
        explanation: "Incorrect,"
      -
        answer: "A function can access its parent-function's variables"
        explanation: "Correct, a function can access its parent's variables"
        correct: true
      -
        answer: "A function has access only to the variables defined within its own scope"
        explanation: "Incorrect, lexical scope allows access to variables outside of the function being executed"

  -
    question: "What key property of lexical scope allows for Function Closures in JavaScript?"
    uuid: d64532ad-17d0-4ad0-8d29-1fca8b196d14
    outcome: 79f28415-ffe3-4d78-b78f-ab987ebe0240
    options_attributes:
      -
        answer: "Accessing variables before they are defined in the global scope"
        explanation: "Incorrect, all functions have access to the global scope, not specifically closures"
      -
        answer: "A function closure has access to its parents' variables after the parent function has _returned_"
        explanation: "Correct, lexical scoping means that the variables are not deallocated and therefore accessible after the parent function finishes executing"
        correct: true

  -
    question: |
      Considering the following code, which variable makes this a closure?

      ```javascript
      function makeAdder(x) {
        return function(y) {
          return x + y;
        };
      }
      var z = makeAdder(3)(4);
      ```
    uuid: ac779410-7070-4d70-b8d3-2bb67feb813c
    outcome: 23eba21f-1118-481e-91aa-7bb9713d9298
    options_attributes:
      -
        answer: "Variable `x`"
        explanation: "Correct, the inner (anonymous) function has access to argument `x` via lexical scoping"
        correct: true
      -
        answer: "Variable `y`"
        explanation: "Incorrect, `y` is the argument to the inner (anonymous) function"
      -
        answer: "Variable `z`"
        explanation: "Incorrect, `z` is the return value of the closure"
      -
        answer: "The code does not contain a function closure"
        explanation: "Incorrect, the inner (anonymous) function has access to the outer function's scope"
---
