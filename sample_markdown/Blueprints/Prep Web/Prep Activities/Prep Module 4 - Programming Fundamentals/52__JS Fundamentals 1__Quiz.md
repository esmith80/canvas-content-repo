---
name: 'JS Fundamentals - Quiz 1'
uuid: ce97e963-4bb4-45cf-978b-1fc123d66414
duration: 30
questions:
  -
    question: "Which of the following expressions does *NOT* result in a number?"
    uuid: 415f2ed8-0fc3-441b-9e60-6e4002893363
    outcome: d1ef0f6a-1b18-4969-a1d6-f4badb0e34f8
    options_attributes:
      -
        answer: "`5 * \"3\"`"
        explanation: "Using the `*` operator on a number and a string will convert the string into a number and multiply them, resulting in a new number."
      -
        answer: "`5 + \"3\"`"
        explanation: "Using the `+` operator on a number and a string will convert the number into a string and concatenate them, resulting in a new string."
        correct: true
      -
        answer: "5 % \"3\""
        explanation: "Using the `%` operator on a number and a string will convert the string into a number and calculate the remainder of their division, resulting in a new number."
      -
        answer: "None of these expressions will result in a number"
        explanation: "Incorrect, Javascript will sometimes view a string as a number under the right circumstances."
      -
        answer: "All of these expressions will result in a number"
        explanation: "Incorrect, consider which operators could be used for other purposes"

  -
    question: |
      What is the result of the following expression?

      ```javascript
      "15" === 15
      ```
    uuid: 3a905592-b082-46e0-9a5f-36a0982aecef
    outcome: 00b10dea-7878-46cb-a98c-235362161c6b
    options_attributes:
      -
        answer: "`true`"
        explanation: "The strict equals operator (`===`) will compare the two operands and return `true` only when they both have the same value and are of the same type. In our case, `\"15\"` is a string and `15` a number – different types, therefore they are not equal to one another."
      -
        answer: "`false`"
        explanation: "The string `\"15\"` and the number `15` may look the same to us, but to JavaScript they are different types. Therefore comparing them using the strict equals operator (`===`) will return `false`."
        correct: true
      -
        answer: "It will throw an error because they are not the same types."
        explanation: "The strict operator `===` is not that strict. It will still be able to do a comparison, just a strict comparison where the types have to match."
      -
        answer: "`undefined` because they are not the same types."
        explanation: "Comparison expressions do their best effort to be `true` or `false` (that is, Boolean)."
      -
        answer: "`null` because they are not the same types."
        explanation: "Comparison expressions do their best effort to be `true` or `false` (that is, Boolean)."

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
      let a = 3;
      let b = 4;
      b = a;
      console.log(b);
      ```
    uuid: 53ba0908-3bb5-4be8-a7e0-8a6170773623
    outcome: 69b5589c-b8f5-4536-8186-40de10a4b40a
    options_attributes:
      -
        answer: "3"
        explanation: "We're declaring two variables, `a` and `b`, and setting their values to `3` and `4` respectively. However, then we're re-assigning `b` to the value of `a`, namely `3`, before logging its value."
        correct: true
      -
        answer: "4"
        explanation: "We're declaring a variable `b` and setting its value to `4`, but then we re-assign `b` to point to the value of `a`, namely `3`, before logging its value."
      -
        answer: "`false`"
        explanation: "The `=` operator sets values to variables. We've set the value of `b` to equal that of `a` – we're not comparing the two against each other."
      -
        answer: "The third line will throw an error so we will not see the output of `b`."
        explanation: "The `=` operator sets values to variables. We've set the value of `b` to equal that of `a`, a valid thing to do in JavaScript."
      -
        answer: "`undefined` because it can be either 3 or 4."
        explanation: "We're declaring a variable `b` and setting its value to `4`, but then we re-assign `b` to point to the value of `a`, namely `3`, before logging its value."

  -
    question: |
      Given the following code, which of the following expressions checks whether the value of `number` is even?

      ```javascript
      const number = 2 + 2;
      ```

    uuid: 12246e5b-077c-40b1-8851-af6ffab56644
    outcome: 02cbdb28-5006-49d9-888b-8a9d740a942b
    options_attributes:
      -
        answer: "`number === \"even\"`"
        explanation: "The value of `number` is the number `4`, which is even but not equal to the string `\"even\"`."
      -
        answer: "`number % 2 === 0`"
        explanation: "All even numbers divide by `2` without any remainder – odd numbers don't. Therefore, if the remainder of dividing `4` into `2` is equal to `0`, we know `4` is even."
        correct: true
      -
        answer: "`number === 2`"
        explanation: "Even numbers divide evenly into `2` – they are not equal to `2`."
      -
        answer: "`number.even?`"
        explanation: "Incorrect. That will work in Ruby, but JS does not have the .even? method."
      -
        answer: "`number.isEven()`"
        explanation: "Incorrect. This method does not exist in JavaScript."

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
      console.log("Bob" || " Marley")
      ```
    uuid: b51700f4-d51b-453b-a10f-3721f8fc44b3
    outcome: f8fff83e-f5cd-46d7-a8df-31d132de31dc
    options_attributes:
      -
        answer: "`\"Bob\"` because the first value is non-empty"
        explanation: "Correct! `\"Bob\"` is a string literal and is not empty, so console.log will display it"
        correct: true
      -
        answer: "`\"Marley\"` because it is the last value in the chain."
        explanation: "Incorrect, when two values are separated by the `||` operator and the first value evaluates to true/non-empty, the second value is skipped"
      -
        answer: "`\"Bob Marley\"` because of the concatenation operator between them."
        explanation: "`||` is not for concatenation but rather an OR operator."
      -
        answer: "`true` since at least one (in this case both) values are non-empty."
        explanation: "Incorrect, the pattern being used here is called 'short-circuiting'. Do a quick search of 'short circuiting javascript' to find out more"

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
        console.log("Jeremy" > "Khurram")
      ```

    uuid: 00247bce-f750-4f1b-9774-3a36107ed0b3
    outcome: bcf79bff-23fa-4575-805e-ae204ac5832b
    options_attributes:
      -
        answer: "Nothing, instead it will throw an error because comparing strings in this way is not possible."
        explanation: "Incorrect. Strings are indeed comparable."
      -
        answer: "`false`"
        explanation: "It will compare each character and since right off the bat J does not come after K, it is not 'greater'."
        correct: true
      -
        answer: "`true`"
        explanation: "Incorrect, strings are compared 'lexicographically', meaning that the greater-than operator will check if each letter in the first word is later in the alphabet than each letter in the second word"
      -
        answer: "`122`"
        explanation: "Comparison operators like < and > produce only boolean values. Please review them again."
      -
        answer: "`22`"
        explanation: "Comparison operators like < and > produce only boolean values. Please review them again."

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
      console.log("Don\nBurks")
      ```
    uuid: c649bc32-1859-404e-9f19-db4492aab735
    outcome: dd01be53-69d0-4b1e-8228-08659f4a4e03
    options_attributes:
      -
        answer: "`\"Don\"` and `\"Burks\"` on separate lines, since `\\n` is a newline character."
        explanation: "That's correct. Each `\\n` is like hitting enter on the keyboard, creating an empty line between the two words here."
        correct: true
      -
        answer: "`\"Don\"` and `\"skruB\"`, since `\\n` will reverse anything that follows."
        explanation: "Incorrect. `\\n` is indeed an escaped, special character. But it does not trigger a reversal."
      -
        answer: "Just `\"Don\"`, since `\\n` terminates the rest of the string."
        explanation: "Incorrect. `\\n` is indeed an escaped, special character. But it does not terminate the string."
      -
        answer: "`\"DonBurks\"` since any characters with `\\` before them are escaped and therefore ignored."
        explanation: "Incorrect. `\\n` is indeed an escaped, special character, but it does something and is _not_ ignored."
      -
        answer: "`\"Don\\nBurks\"`"
        explanation: "Incorrect. The `\\n` is not a literal character but rather an escaped character. It therefore does not literally print `\\n` to the screen."

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
      let sum = 3 + 2;

      const doubleSum = function(a, b) {
        let sum = a + b;
        return sum * 2;
      }

      doubleSum(5, 4);

      console.log(sum);
      ```
    uuid: 7e0e2b7b-b17a-456a-a2d1-1e59a9b92274
    outcome: 91070c04-7898-46fe-9df6-7b7fc9a5a955
    options_attributes:
      -
        answer: "`5`"
        explanation: "We have two `sum` variables in different scopes. We're logging the value of `sum` outside `doubleSum`, which is `5`."
        correct: true
      -
        answer: "`9`"
        explanation: "We have two `sum` variables in different scopes. We're logging the value of `sum` outside `doubleSum`, which is not the same as the the value of `sum` inside `doubleSum`."
      -
        answer: "`18`"
        explanation: "The result of `doubleSum(5, 4)` is set to the variable `double`, which is not the variable we've logged to the console."
      -
        answer: "It will throw an error because `sum` is being defined using `var` twice."
        explanation: "Incorrect because of JavaScript's nested scoping."
      -
        answer: "It will throw an error because `doubleSum` is an improper function definition."
        explanation: "Incorrect. It's defined just fine."

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
      const areMultiples  = function (bigNumber, smallNumber) {
        return bigNumber % smallNumber === 0;
      }

      console.log(areMultiples(15, 4));
      ```
    uuid: a18cc08b-99ea-4eb4-ad98-2484b39782e1
    outcome: 5f31f50b-dd18-4628-8735-de95de8faddd
    options_attributes:
      -
        answer: "`3.75`"
        explanation: "The function `areMultiples` calculates whether `bigNumber` can be divided evenly by `smallNumber`. It does not divide the numbers."
      -
        answer: "`true`"
        explanation: "The function `areMultiples` calculates whether `bigNumber` can be divided evenly by `smallNumber`. `15 % 4` is equal to `3`, because the remainder of dividing `15` by `4` is `3`. Therefore the two numbers are not multiples of each other."
      -
        answer: "`false`"
        explanation: "The function `areMultiples` calculates whether `bigNumber` can be divided evenly by `smallNumber`. `15 % 4` will not equal `0` because the two numbers are not multiples of each other."
        correct: true
      -
        answer: "`areMultiples(15, 3)`"
        explanation: "JavaScript will call `areMultiples(15, 3)` and will log its value, not the string `\"areMultiples(15, 3)\"`."

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
      const countdown = [3,2,1];
      console.log(countdown[1]);
      ```
    uuid: 1c53c722-847b-47ec-ab49-ac613e259898
    outcome: 5128eee5-370e-494c-805a-e17500ba8032
    options_attributes:
      -
        answer: "`3`"
        explanation: "Array indexing starts at index `0`. The value `3`, then, is at index `0` of `countdown`."
      -
        answer: "`2`"
        explanation: "The value of `countdown` at index `1` is `2`."
        correct: true
      -
        answer: "`1`"
        explanation: "We're not logging the value `1`, but the value of `countdown` at index `1`."
      -
        answer: "`6`"
        explanation: "That's the sum of all the numbers in the array, but we're not asking it to perform an addition on any of them."
      -
        answer: "`undefined`"
        explanation: "Incorrect. This would be true if we tried to index a position that wasn't in the array like `countdown[5]`."

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
      const seasons = ["spring", "summer", "fall"];
      const length = seasons.length;

      seasons.push("winter");

      console.log(length);
      console.log(seasons.length);
      ```
    uuid: c5f2e133-790e-4b0c-a179-ea2ee1069679
    outcome: ad2ef026-74ca-4bae-8d7e-3e8a3d2a50b2
    options_attributes:
      -
        answer: "`4` then `4`"
        explanation: "The variable `length` stores the value of `seasons.length` when `seasons` is holding 3 items, and while `seasons.length` changes as we push items into `seasons`, `length` will not since it's not pointing to the same value."
      -
        answer: "`3` then `4`"
        explanation: "`seasons.length` will increase as we push items into `seasons`, but the variable `length` will not because it's pointing to a different value."
        correct: true
      -
        answer: "It will throw an error when it gets to `push`."
        explanation: "Incorrect. `push` is a valid function that can be called on an Array to insert additional values into it."
      -
        answer: "`4` then `3`"
        explanation: "The variable `length` stores the value of `seasons.length` when `seasons` is holding 3 items, and while `seasons.length` changes as we push items into `seasons`, `length` will not since it's not pointing to the same value."

  -
    question: |
      What will be logged to the console by the following code?

      ```javascript
      const vacationDays = 2 + 3;

      if (vacationDays <= 5) {
        console.log("Not enough for a long vacation.");
      } else if (vacationDays === 5) {
        console.log("We can take a whole week off, not bad.");
      } else {
        console.log("We're gonna have a great time!");
      }
      ```
    uuid: 0d4fe522-06ae-40a9-9f8c-be441b19853e
    outcome: 1afe50f6-1d8a-4169-b6d6-c26bb5d749c7
    options_attributes:
      -
        answer: "`\"Not enough for a long vacation.\"`"
        explanation: "`vacationDays` is `5`, which means it's also less than or equal to `5`, and so the first `if` statement evaluates to `true`."
        correct: true
      -
        answer: "`\"We can take a whole week off, not bad.\"`"
        explanation: "`vacationDays` is `5`, which means it's also less than or equal to `5`, and so the first `if` statement evaluates to `true` and the second statement, the `else if`, will not be evaluated regardless of whether it also is `true` or not."
      -
        answer: "`\"We're gonna have a great time!\"`"
        explanation: "`vacationDays` is `5`, therefore also less than or equal to `5`, and so the first condition will evaluate to `true` and JavaScript will not execute the `else` block."
      -
        answer: "`\"Not enough for a long vacation.\"` followed immediately by `\"We can take a whole week off, not bad.\"`"
        explanation: "Only one of the three branches in an if statement will ever execute."
---
