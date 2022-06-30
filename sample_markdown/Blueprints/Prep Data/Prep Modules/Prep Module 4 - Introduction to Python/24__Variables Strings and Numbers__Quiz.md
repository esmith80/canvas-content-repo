---
uuid: 8490bb71-5cc1-4f86-b5d7-25d93547250e
name: 'Variables, Strings and Numbers in Python'
duration: 20
questions:

  -
    question: "What is the result of `100 / 25` in Python 3?"
    uuid: efb76673-d763-4522-b2d4-43343edcb400
    outcome: 476b6049-f5f2-4cd3-9e93-dd19cf7cee12
    options_attributes:
      -
        answer: "4.0"
        explanation: "Correct. Python 3 automatically converts division to `float`."
        correct: True
      -
        answer: "4"
        explanation: "Almost correct. In Python 2, it would be correct but Python 3 converts the result."


  -
    question: "What is the output of the print('barf' in 2 * (s + t)) function call, where s = 'foo' and t = 'bar'?"
    uuid: f29c1437-7e65-4d20-bfbc-1711345f3e91
    outcome: f8587e8e-fdc4-4fa8-bdf8-172229076fb5
    options_attributes:
      -
        answer: "False"
        explanation: "Incorrect. Focus more on what * and + do with the strings."
      -
        answer: "True"
        explanation: "Correct. The + operator concatenates strings and the * operator creates multiple copies. The result of 2 * (s + t) is 'foobarfoobar', which does contain the string 'barf'"
        correct: True
  
  -
    question: "Suppose s is assigned as follows: s = 'foobar'. All of the following expressions produce the same result except one. Which one is it?"
    uuid: 3984b103-755d-42a2-8cdd-83aa66488cd7
    outcome: e7652129-6ffc-483c-b6d4-0021488f6260
    options_attributes:
      -
        answer: "s[0] + s[-1]"
        explanation: "Incorrect. s[0] is the first character, 'f'.
        s[-1] is the last character, 'r'."
      -
        answer: "s[::-1][-1] + s[len(s)-1]"
        explanation: "Incorrect. s[::-1] reverses the string, so it equals 'raboof'. The added [-1] index specifies the last character of that string, 'f'.
        s[len(s)-1] is the same as s[-1] – the last character of the original string, 'r'."
      -
        answer: "s[::-5]"
        explanation: "Correct. [::5] specifies every fifth character, starting at the beginning and proceeding to the end (because the first two indices are allowed to default). Thus, the result is the first character, 'f', followed by the sixth character, 'r'."
        correct: True
      -
        answer: "s[::-1][::-5]"
        explanation: "Incorrect. As above, s[::-1] is 'raboof'. [::-5] specifies every fifth character, starting at the end and proceeding to the beginning (remember that when the stride is negative, the first index defaults to the end of the string, and the second index to the beginning, rather than the other way round). Thus, this returns 'f', then 'r'"
      -
        answer: "s[::5]"
        explanation: "Incorrect. s[::-5], specifies every fifth character, starting at the end of the string and proceeding to the beginning."
  
  -
    question: "Which of the following is False:"
    uuid: b026bedc-7c1e-44ba-8be8-4ed147587090
    outcome: f018b745-2f03-4d09-816f-e6383ce493dd
    options_attributes:
      -
        answer: "s[::-1][::-1] == s"
        explanation: "Incorrect. s[::-1] reverses s, but creates a reference to a new object. An additional [::-1] slice reverses it again, so it is equal to the original s."
      -
        answer: "s[:] == s"
        explanation: "Incorrect. "
      -
        answer: "s[:] is s"
        explanation: "Incorrect. "
      -
        answer: "s[::-1][::-1] is s"
        explanation: "Correct. "
        correct: True

---

