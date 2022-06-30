---
name: "Online Learning"
uuid: 11f9ac3e-9b98-41e7-8ce4-e126daec1ece
duration: 15
questions:

  -
    question: "Which statement is NOT TRUE about Online Laarning?"
    uuid: 6956b4d0-5534-46d7-8d4b-413a61b308fe
    outcome: 262a9f71-728e-43b9-b700-5832ddc80489
    options_attributes:
      -
        answer: "Online Learning is a method of machine learning."
        explanation: "Incorrect. This is true."

      -
        answer: "An Online Learning algorithm can dynamically adapt to new patterns in the data."
        explanation: "Incorrect. This is a true statement."

      -
        answer: "Online Learning can be used only with Supervised Learning."
        explanation: "Right. This statement is not true. Online Learning can be used also with Unsupervised Learning."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "Which sklearn classifier CANNOT be used in Online Learnning?"
    uuid: 7a3e6407-7a51-4190-9184-3f5574edf04c
    outcome: 0769a430-28f7-4d9c-a625-1bbcd66ac836
    options_attributes:
      -
        answer: "SGDClassifier"
        explanation: "Incorrect. This classifier can be used in Online Learning."

      -
        answer: "MultinomialNB"
        explanation: "Incorrect. This classifier can be used in Online Learning."

      -
        answer: "RandomForestClassifier"
        explanation: "Correct."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "Which of the following Unsupervised learning algorithms can be used in Online Learning?"
    uuid: 74596991-f814-4d38-9a41-e806cd17bda6
    outcome: 5a788628-8013-4843-8795-5f7726f2e237
    options_attributes:
      -
        answer: "KMeans"
        explanation: "Incorrect. KMeans has not the partial_fit() method implemented."
      -
        answer: "MiniBatchKMeans"
        explanation: "Correct. MiniBatchKMeans has the partial_fit() method implemented."
        correct: true
    
      -
        answer: "Both of the above."
        explanation: "Incorrect. Only one can be used in Online Learning."
        
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."
    
---