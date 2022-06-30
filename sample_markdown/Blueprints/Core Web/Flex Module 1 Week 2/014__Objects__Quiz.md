---
name: "JavaScript Objects"
uuid: 3eb7e490-0dd6-47be-8415-931ee8496628
questions:

  -
    question: "Which of the following is **not** a primitive data type in JavaScript?"
    uuid: e7f22b27-20e4-4780-bdce-0f89ad5ef41a
    outcome: 353a8c2c-ee77-42f8-8def-cb6be3491bfd
    options_attributes:
      -
        answer: "Boolean"
        explanation: "Incorrect, _boolean_ is a primitive data type in JavaScript"
      -
        answer: "Array"
        explanation: "Correct, arrays are a type of Object in JavaScript, not a primitive"
        correct: true
      -
        answer: "Number"
        explanation: "Incorrect, _number_ is a primitive data type in JavaScript"
      -
        answer: "String"
        explanation: "Incorrect, _string_ is a primitive data type in JavaScript"

  -
    question: "Which of the following is a valid way to access an object value? (Multiple correct)"
    uuid: 92af4053-4903-4be3-8b8b-f15450bff2f3
    outcome: eb5c730b-5ef1-4e7a-8428-fa7f32f99f35
    options_attributes:
      -
        answer: "myObject['key']"
        explanation: "Correct, you can access object values using square bracket notation"
        correct: true
      -
        answer: "myObject.key"
        explanation: "Correct, you can access values using `.key` notation"
        correct: true
      -
        answer: "myObject.get('key')"
        explanation: "Incorrect, JavaScript does not provide `get()` functions by default"
      -
        answer: "myObject(key)"
        explanation: "Incorrect, the parentheses are for executing functions"

  -
    question: "Are primitive data types the same across most programming languages?"
    uuid: ec083568-fec2-4709-9822-395f53d85a17
    options_attributes:
      -
        answer: "Yes, virtually all programming languages have the same basic primitive data types"
        explanation: "Incorrect, primitive data types are not necessarily the same between programming languages"
      -
        answer: "No, primitives are a defining feature of a programming language"
        explanation: "Correct, primitives are similar, but often unique to a given programming language"
        correct: true
      -
        answer: "Depending on how variables are defined in the program"
        explanation: "Incorrect, primitive types are a constant characteristic of a programming language"

  -
    question: |
      Is the following code a valid Object in JavaScript?

      ```javascript
      var myObjected = {
      'key-1': 42,
      keyB: 'value B',
      'keyC': [1, 2, 3]
      };
      ```
    uuid: 905bada6-4f90-4333-9a0c-8d78006dcbad
    options_attributes:
      -
        answer: "No, `keyB` is missing quotes"
        explanation: "Incorrect, keys don't _need_ quotes unless they're hypthenated or contain spaces"
      -
        answer: "Yes, although the keys could be defined more consistently"
        explanation: "Correct, the object would work despite inconsistent key definitions"
        correct: true
      -
        answer: "No, values cannot be nested objects such as arrays or other objects"
        explanation: "Incorrect, JavaScript objects support nesting"
      -
        answer: "No, keys cannot contain hyphens or spaces"
        explanation: "Incorrect, keys may contain special characters as long as they are surrounded by quotes"

  -
    question: |
      Given the following object, how would you access the first borough, `Manhattan` (using JavaScript)?

      ```javascript
      var nyc = {
        name: 'New York City',
        boroughs: [
          'Manhattan',
          'Queens',
          'Brooklyn',
          'The Bronx',
          'Staten Island'],
        population: 8491079,
        area_codes: [212, 347, 646, 718, 917, 929],
        position: { lat: 40.7127, lng: -74.0059 }
      }
      ```
    uuid: 5f31166a-62a2-43bd-b852-cfb10e7aa973
    outcome: 9d6cf701-49f3-495c-bbb0-fdbdbb135b5e
    options_attributes:
      -
        answer: "nyc.get('boroughs')"
        explanation: "Incorrect, the object would not have a `get()` method"
      -
        answer: "nyc['boroughs'][1]"
        explanation: "Incorrect, array indexing starts at 0"
      -
        answer: "nyc['boroughs'][0]"
        explanation: "Correct, this would return the first element of the `boroughs` array"
        correct: true
---
