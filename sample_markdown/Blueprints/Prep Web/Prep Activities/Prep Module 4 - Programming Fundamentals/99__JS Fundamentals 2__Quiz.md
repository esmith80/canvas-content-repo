---
name: 'JS Fundamentals - Part 2'
uuid: b09c526b-64a2-435b-8b01-e49a811f24b4
archived: true
questions:
  -
    question: |
      What will the following code output to the console?

      ```javascript
      const beatles = ["john", "paul", "george", "ringo"];
      for (let i = 0; i < beatles.length; i += 2) {
        console.log(beatles[i]);
      }
      ```
    uuid: 393e7ce4-b4c2-4c98-8ef7-4bac9b73907e
    outcome: 20c81186-140f-4cd4-85ea-880e12c7c465
    options_attributes:
      -
        answer: |
          ```bash
          john
          paul
          george
          ringo
          ```
        explanation: "The `for` loop's counter variable, `i`, increments not by `1` but by `2` at every step, and so not every item in the array will be printed out."
      -
        answer: |
          ```bash
          john
          george
          ```
        explanation: "The `for` loop's counter variable, `i`, starts at `0` and increments by `2` each step so only indexes `0` and `2` will be printed out."
        correct: true
      -
        answer: |
          ```bash
          paul
          ringo
          ```
        explanation: "The `for` loop's counter variable, `i`, increments by `2` at each step and so will skip some items in the array, but it starts at `0`. The first item printed will be the item at index `0` in the array."
      -
        answer: "Index out of bounds error"
        explanation: "The `for` loop will only continue _while_ `i` is less than the length of the array, so it will not execute the contents of the loop when it equals or goes over the length."
      -
        answer: |
          ```bash
          ringo
          paul
          ```
        explanation: "The `for` loop is increasing the index as it loops through, therefore not looking at the items in reverse order."
---
