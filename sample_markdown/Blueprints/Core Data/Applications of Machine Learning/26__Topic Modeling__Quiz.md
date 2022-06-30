---
name: "Topic modeling"
uuid: 65280d9d-3bac-4820-a84c-7f00f9941e0c
duration: 15
questions:

  -
    question: "Which of the following algorithms is not used for Topic Modeling?"
    uuid: 27e255f4-5ac7-411e-b56e-223f77f5dfdb
    outcome: 2b1a2eb2-38cc-4604-975f-f112657b331c
    options_attributes:
      -
        answer: "Latent Semantic Analysis (LSA/LSI)."
        explanation: "Incorrect. This algorithm is used for topic modeling."

      -
        answer: "Non-negative-matrix-factorization (NMF)."
        explanation: "Incorrect. This algorithm is used for topic modeling."

      -
        answer: "Linear Discriminant Analysis (LDA)."
        explanation: "Correct. This algorithm is a classifier."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "Which of these libraries can be used for Topic Modeling?"
    uuid: 4fc7af5c-e558-4827-b12c-cd55d1e7c3d0
    outcome: c5d64df1-478e-44d3-9b30-ee85d6d34de4
    options_attributes:
      -
        answer: "Sklearn."
        explanation: "Almost correct. But we can use more libraries."

      -
        answer: "Gensim."
        explanation: "Almost correct. But we can use more libraries."

      -
        answer: "Sklearn and Gensim."
        explanation: "Correct."
        correct: true
      -
        answer: "NLTK and Gensim."
        explanation: "Incorrect. NLTK does not contain Topic modeling."
        
  -
    question: "Which of these parameters set the values of `alpha` and `beta` in `LDA` algorithm from `Sklearn`?"
    uuid: 319552b6-6f84-4860-830e-85cb838816d2
    outcome: fa4138c3-2bca-4d22-9ef7-01bf52b080db
    options_attributes:
      -
        answer: "Alpha is set by 'doc_topic_prior' and beta is set by 'topic_word_prior'."
        explanation: "Correct."
        correct: true
      -
        answer: "Beta is set by 'doc_topic_prior' and alpha is set by 'topic_word_prior'."
        explanation: "Almost, but it's the other way round."
      -
        answer: "Alpha is set by 'learning_decay' and beta is set by 'learning_offset'."
        explanation: "Incorrect. You can find the meaning of these parameters in 'Sklearn' documentation."
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct"
    
---