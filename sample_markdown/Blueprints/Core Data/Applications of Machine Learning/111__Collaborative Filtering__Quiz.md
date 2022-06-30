---
name: "Collaborative filtering"
uuid: 2d806c22-4e00-435b-9fa2-4d4993647c6f
duration: 25
questions:

  -
    question: "Which data format is suitable for Collaborative filtering models?"
    uuid: 5f371a95-3786-4278-834f-d37cd3986a7b
    outcome: c3407eb4-6c3c-436e-a191-7cb4a078ac3e
    options_attributes:
      -
        answer: "A matrix with users as rows and items as columns. Values in the matrix are reactions of users to items."
        explanation: "Correct. The reaction can be explicit (rating on a scale of 1 to 5, likes or dislikes) or implicit (viewing an item, adding it to a wish list, the time spent on an article)."
        correct: true

      -
        answer: "A matrix with items as rows and one column containing the count of the items sold."
        explanation: "Incorrect."


      -
        answer: "A matrix with users as rows and one column containing the count of the users."
        explanation: "Incorrect."
      -
        answer: "None of the above"
        explanation: "Incorrect. One option is correct."

  -
    question: "How is similarity calculated when we use an approach based purely on collaborative filtering? "
    uuid: 1191ada8-adff-489b-a939-545f4ba4128c
    outcome: 7ccc2421-b6dc-40f5-be5e-da8bcd939fad
    options_attributes:
      -
        answer: "Similarity is calculated using factors like the age of users, genre of the movie, or any other data about users or items."
        explanation: "Incorrect. Similarity is not calculated using data about users or items."
      -
        answer: "Similarity is calculated only based on the rating (explicit or implicit) a user gives to an item."
        explanation: "Correct."
        correct: true
    
      -
        answer: "Similarity is calculated using data about users or items and using the rating (explicit or implicit) a user gives to an item."
        explanation: "Incorrect. Only one part of this answer is correct."
        
      -
        answer: "None of the above."
        explanation: "Incorrect."
     
        
  -
    question: "Which library in Python is most suitable (according to this course) for building Recommender engines?"
    uuid: baa55026-eee0-4be2-a849-37dd6160ca3a
    outcome: b41347f4-b6bc-4582-8c2c-41ec6031d569
    options_attributes:
      -
        answer: "Sklearn."
        explanation: "Almost correct. We can use this library for Recommender engines but we also have a better option. "
      -
        answer: "Statsmodels."
        explanation: "Incorrect. There are much better options."
      -
        answer: "Scikit-Surprise."
        explanation: "Correct."
        correct: true
      -
        answer: "Keras."
        explanation: "Incorrect. This library is used for building neural networks."
  -
    question: "Which technique we CANNOT use in Memory-based Collaborative filtering?"
    uuid: 83d2d42a-30d1-49f4-8354-0c2e8f428995
    outcome: 27bf0d9c-0578-4cd8-916d-636729a0c292
    options_attributes:
      -
        answer: "Cosine similarity."
        explanation: Incorrect. This technique is used in Memory-based Collaborative filtering.
      -
        answer: "Parson correlation coefficient."
        explanation: Incorrect. This technique is used in Memory-based Collaborative filtering.
    
      -
        answer: "SVD"
        explanation: "Correct. This technique is used in Model-based Collaborative filtering."
        correct: true
        
      -
        answer: "None of the above."
        explanation: "Incorrect."
  -
    question: "Which evalution metric can be used to evaluate Recommender Engines?"
    uuid: 997102d3-83d4-44ce-92f3-59383ba245fc
    outcome: 6c46e38f-280b-4471-9b82-7e489e37ab14
    options_attributes:
      -
        answer: "AUC."
        explanation: Incorrect. AUC can be used to evaluate classification models.
      -
        answer: "RMSE."
        explanation: Correct. But there are more correct options.
    
      -
        answer: "MAE."
        explanation: Correct. But there are more options available.
        
      -
        answer: "RMSE and MAE."
        explanation: "Correct."
        correct: true
    
---