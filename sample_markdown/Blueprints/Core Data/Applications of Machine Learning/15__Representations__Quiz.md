---
name: "Representations"
uuid: 6ef9103a-990a-44ca-a3bc-68a0d1dd37e2
duration: 15
questions:

  -
    question: "Which of the following vectorization techniques penalizes words that occur frequently in documents?"
    uuid: ef200aca-128f-4fec-b17b-17fef27b1f07
    outcome: 3a0ab505-e105-4c9c-8c9d-0a8e1342ab22
    options_attributes:
      -
        answer: "Bag of words."
        explanation: "Incorrect. This technique does not penalize words that occurred often in documents."

      -
        answer: "Tf-Idf."
        explanation: "Correct."
        correct: true

      -
        answer: "Word2vec."
        explanation: "Incorrect. This technique does not penalize words that occurred often in documents."
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "Which of the following vectorization techniques assigns close vectors to words with similar meaning?"
    uuid: 38e09f4a-c52e-4224-a2f0-d33a54b7642d
    outcome: 9b5bf74e-7a95-4ec7-8151-0ce1ac4fc6e0
    options_attributes:
      -
        answer: "Bag of words."
        explanation: "Incorrect. This technique does not assign close vectors to words with similar meaning."

      -
        answer: "Tf-Idf."
        explanation: "Incorrect. This technique does not assign close vectors to words with similar meaning."

      -
        answer: "Word2vec."
        explanation: "Correct."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."
        
  -
    question: "What's the difference between the CBOW and Skip-Gram model architecture in Word2Vec model? "
    uuid: ab391c6c-2654-4484-83eb-87c02c4bc22b
    outcome: 74e6ce00-5012-4b4d-a4e9-7f8e61ca7cba
    options_attributes:
      -
        answer: "There is no difference in the architecture. It's only a different naming convention for the same thing."
        explanation: "Incorrect. These two architectures are different."
      -
        answer: "CBOW uses the current word to predict neighbors. Skip-Gram uses surrounding words to predict the current word."
        explanation: "Incorrect. These are not the definitions of CBOW and Skip-Gram."
      -
        answer: "Skip-Gram uses the current word to predict neighbors. CBOW uses surrounding words to predict the current word."
        explanation: "Correct."
        correct: true
      -
        answer: "None of the options is correct."
        explanation: "Incorrect. One option is correct."
    
---