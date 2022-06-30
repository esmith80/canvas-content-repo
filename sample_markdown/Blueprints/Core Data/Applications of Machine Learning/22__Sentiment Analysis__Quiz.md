---
name: "Sentiment Analysis"
uuid: 0c69e0d1-2d47-428b-af46-e60d319c4838
duration: 15
questions:

  -
    question: "Which type of learning can we use in `Sentiment Analysis`?"
    uuid: 7a23106c-8ad8-436b-8638-22ffc251c713
    outcome: deb51058-b4aa-446d-89de-2c767dd5c091
    options_attributes:
      -
        answer: "Supervised learning."
        explanation: "Almost correct. But not only supervised learning."

      -
        answer: "Unsupervised learning."
        explanation: "Almost correct. But not only unsupervised learning."

      -
        answer: "Supervised and Unsupervised learning."
        explanation: "Correct."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "Which of these algorithms can be used in Sentiment Analysis?"
    uuid: 5619b434-ace5-4fc8-9c0c-99b6b72fae18
    outcome: c014721c-6c0a-4547-8bc7-4dd83066e5ef
    options_attributes:
      -
        answer: "Logistic regression."
        explanation: "Almost correct, but we can use more algorithms."

      -
        answer: "Naive Bayes."
        explanation: "Almost correct, but we can use more algorithms."

      -
        answer: "Random Forest."
        explanation: "Almost correct, but we can use more algorithms."
      -
        answer: "All of the above."
        explanation: "Correct. All of the mentioned algorithms are classifiers, therefore can be used in Sentiment Analysis."
        correct: true
        
  -
    question: "Which of these vectorizers is NOT suitable for document classification?"
    uuid: 15909aaa-76a6-4442-b533-ec1187b649b2
    outcome: 1d84c762-3d04-452c-84a1-40185ad1a90f
    options_attributes:
      -
        answer: "Bag-of-Words."
        explanation: "Incorrect. We can use bag-of-words as a vectorizer for document classification."
      -
        answer: "Tf-Idf."
        explanation: "Incorrect. We can use Tf-Idf as a vectorizer for document classification."
      -
        answer: "Word2Vec."
        explanation: "Correct."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct"
    
---