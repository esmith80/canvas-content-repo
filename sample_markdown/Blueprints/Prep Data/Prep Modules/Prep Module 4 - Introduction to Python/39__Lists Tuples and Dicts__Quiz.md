---
uuid: bb61c5d5-a0b3-4855-961f-23953630d882
name: 'List, Tuples and Dictionaries in Python'
duration: 20
questions:

  -
    question: "Which of the following is true of Python lists?"
    uuid: ead98cc2-254d-4252-b993-d3674ea350bc
    outcome: 93f51c43-4109-4bf1-9d66-05867ff21ed6
    options_attributes:
      -
        answer: "A list may contain any type of object except another list."
        explanation: "Incorrect. The lists can also be nested."
      -
        answer: "All elements in a list must be of the same type."
        explanation: "Incorrect. "
      -
        answer: "A given object may appear in a list more than once."
        explanation: "Correct! The same object may occur any number of times."
        correct: true
      -
        answer: "These represent the same list: ['a', 'b', 'c'] and ['c', 'a', 'b']"
        explanation: "Incorrect. A list is an ordered collection of objects."

  -
    question: "List a is defined as follows: a = [1, 2, 3, 4, 5]. Select one of the following statements that doesn't remove the middle element 3."
    uuid: c3eab00f-6e50-4aec-835a-66087fcb8151
    outcome: 95ccd58e-1e2f-487b-a58c-8d833ceff0bd
    options_attributes:
      -
        answer: "a.remove(3)"
        explanation: "Incorrect. The .remove() method removes the specified argument from the target list, if it is present. This is a nice way to remove an item from a list by specifying its value, rather than its index in the list."
      -
        answer: "del a[2]"
        explanation: "Incorrect. The del command simply removes the specified list item."
      -
        answer: "a[2:3] = []"
        explanation: "Incorrect! a[2:3] represents the slice of a consisting of the single element 3. The slice assignment a[2:3] = [] replaces that slice with an empty list, which effectively removes that element."
      -
        answer: "a[3:4] = []"
        explanation: "Correct. a[3:4] represents the slice of a consisting of the single element 4."
        correct: true

  -
    question: "List a is defined as follows: a = ['a', 'b', 'c']. Which of the following statements does NOT add 'd' and 'e' to the end of a, so that it then equals ['a', 'b', 'c', 'd', 'e']: "
    uuid: 351f4f40-cad8-4c2a-ab3a-d7dee8bb4b90
    outcome: c246edb3-3b1f-4402-aef5-6f6819e86927
    options_attributes:
      -
        answer: "a[len(a):] = ['d', 'e']"
        explanation: "Incorrect. a[len(a):] designates an empty slice at the end of a. This assignment replaces that slice with ['d', 'e']."
      
      -
        answer: "a.extend(['d', 'e'])"
        explanation: "Incorrect. The .extend() method also expects an iterable as an argument, and adds the designated items to the target list."
     
      -
        answer: "a += ['d', 'e']"
        explanation: "Incorrect. The += augmented assignment operator expects an iterable as the second operand. It iterates over the second operand and adds the resulting items to the end of the target operand."
     
      -
        answer: "a.append(['d', 'e'])"
        explanation: "Correct. The .append() method takes a single object as its argument, and adds that object intact to the end of the target list. So this statement actually adds the list ['d', 'e'] to the end of a."
        correct: true

  -
    question: "Suppose you have the following tuple definition: t = ('foo', 'bar', 'baz'). Which of the following statements replaces the second element ('bar') with the string 'qux': "
    uuid: f9a71563-5fe4-4a36-a197-64fbe06319c8
    outcome: 6affe290-e11e-466d-9967-f4fdb1366066
    options_attributes:
      -
        answer: "t[1] = 'qux'"
        explanation: "Incorrect. It’s a trick question :)"
      -
        answer: "t(1) = 'qux'"
        explanation: "Incorrect. It’s a trick question :)"
      -
        answer: "It’s a trick question — tuples can’t be modified."
        explanation: "Correct! Tuples can’t be modified."
        correct: true
      -
        answer: "t[1:1] = 'qux'"
        explanation: "Incorrect. It’s a trick question :)"
  
  -
    question: "Consider this assignment statement: a, b, c = (1, 2, 3, 4, 5, 6, 7, 8, 9)[1::3]. Following the execution of this statement, what is the value of b: "
    uuid: e4499f31-5877-4db3-abc5-352c8d7e61b7
    outcome: 8ab2b538-71e9-4c9f-86ba-6af0cbb8ce49
    options_attributes:
      -
        answer: "6"
        explanation: "Incorrect. The slice expression on the right side of the assignment produces the tuple (2, 5, 8)."
      -
        answer: "5"
        explanation: "Correct. The slice expression on the right side of the assignment produces the tuple (2, 5, 8)."
        correct: true
      -
        answer: "4"
        explanation: "Incorrect! The slice expression on the right side of the assignment produces the tuple (2, 5, 8)."
      -
        answer: "2"
        explanation: "Incorrect. The slice expression on the right side of the assignment produces the tuple (2, 5, 8)."

  -
    question: "Assume x and y are assigned as follows: x = 5 and y = -5. What is the effect of this statement: x, y = (y, x)[::-1]."
    uuid: ebd1ce75-c557-425f-b773-1b46492eb0f6
    outcome: 73600dad-5f15-49f3-a701-6984f17c289e
    options_attributes:
      -
        answer: "The values of x and y are unchanged."
        explanation: "Correct. The slice expression on the right side of the assignment reverses the tuple."
        correct: true
      -
        answer: "The values of x and y are swapped."
        explanation: "Incorrect. The slice expression on the right side of the assignment reverses the tuple."
      -
        answer: "Both x and y are -5."
        explanation: "Incorrect! The slice expression on the right side of the assignment reverses the tuple."
      -
        answer: "Both x and y are 5."
        explanation: "Incorrect. The slice expression on the right side of the assignment reverses the tuple."
---

