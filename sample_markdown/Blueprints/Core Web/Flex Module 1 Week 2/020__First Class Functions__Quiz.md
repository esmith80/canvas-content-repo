---
name: "First Class Functions"
uuid: 99d22b5a-58ed-4503-b388-94d14f212c62
questions:

  -
    question: "In programming, what is meant by the term **First-class citizen** (or First-class object)?"
    uuid: 1db52d9f-492e-4784-a879-3c376caa8886
    outcome: 4bbba5ea-f3f2-44d4-98f2-0b4fdd27a054
    options_attributes:
      -
        answer: "A variable that has higher level of scope than normal objects"
        explanation: "Incorrect, scope is the same for first-class objects"
      - 
        answer: "The language will compile code pertaining to First-class objects in order to speed up the runtime"
        explanation: "Where did you hear this sort of hogwash?"
      - 
        answer: "Certain built-in object types such as `Array` are considered \"First-class\" since they are built into the language"
        explanation: "There is no such separation of built-in objects vs objects that we would define"
      -
        answer: "An object with no restrictions on its creation, destruction, or usage"
        explanation: "Correct, this includes the ability to be passed as an argument, returned from a function, and assigned to a variable"
        correct: true
      -
        answer: "None of the above"
        explanation: "Nope, one of the answers above is indeed correct"

  -
    question: "Can functions act as objects in JavaScript? _(feel free to experiment in the REPL if you want to confirm)_"
    uuid: 0892f4cd-6dc8-41ca-b825-1bd79a415011
    outcome: 6059e166-ff5a-49dd-9ded-26c74567764d
    options_attributes:
      -
        answer: "Yes"
        explanation: "Correct, functions are instances of the Object type in JavaScript and can have properties and methods just like any other object"
        correct: true
      - 
        answer: "Yes, but only in ES6 and beyond"
        explanation: "Incorrect, this is not new behavior in ES5"
      - 
        answer: "Yes, but only if they are defined as arrow functions"
        explanation: "This behavior is not related to arrow functions"
      - 
        answer: "Yes, unless they are defined as arrow functions"
        explanation: "This behavior is not related to arrow functions"
      -
        answer: "No"
        explanation: "Incorrect, function is an instance of the Object type in JavaScript"
      

  -
    question: |
      Considering the following JavaScript code, is it possible to assign attributes to a function?

      ```javascript
      const funObject = function() {
        console.log('I am function.');
      }
      funObject.someAttribute = 42;
      ```
    uuid: b986b9be-bcff-41c0-aa6f-0ab04de480c3
    outcome: 6059e166-ff5a-49dd-9ded-26c74567764d
    options_attributes:
      -
        answer: "It wouldn't cause errors, but the attribute is lost"
        explanation: "Incorrect, there is no reason to drop the attribute after assignment"
      -
        answer: "It is possible because JavaScript functions are also Objects"
        explanation: "Correct, functions can be assigned attributes like any other object"
        correct: true
      -
        answer: "It is invalid JavaScript and would cause errors"
        explanation: "Incorrect, it is valid JavaScript"
      -
        answer: "It is possible but since `funObject` is a constant, the function object cannot be mutated"
        explanation: "Incorrect. The _value_ of funObject cannot be mutated (i.e. where it points), but the object it points to _can_ still be mutated."
      -
        answer: "It is possible but only if running ES6. This is not supported in ES5."
        explanation: "Incorrect. This ability has been around in JS for a long time and is a core feature in JS"

---
