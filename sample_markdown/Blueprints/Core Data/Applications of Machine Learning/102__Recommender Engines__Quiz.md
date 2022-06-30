---
name: "Recommender Engines I"
uuid: 36b9d007-467f-43f0-b3f9-7ee0334a24ca
duration: 15
questions:

  -
    question: "Which technique is NOT used in recommendation systems?"
    uuid: e3950d9f-1d2c-4091-96fd-fa71d0799bd5
    outcome: 70d7f08e-7d25-43d8-b845-71678b968cf2
    options_attributes:
      -
        answer: "Content-based filtering"
        explanation: "Incorrect. This technique is used in recommendation systems."

      -
        answer: "Collaborative filtering"
        explanation: "Incorrect. This technique is used in recommendation systems."

      -
        answer: "Bootstrap aggregating."
        explanation: "Correct."
        correct: true
      -
        answer: "A hybrid of Content-based filtering and Collaborative filtering."
        explanation: "Incorrect. This technique is used in recommendation systems."

  -
    question: "What are the major components of the Apriori algorithm?"
    uuid: ea16f0c2-410a-40be-8caf-5ca82d782efa
    outcome: 8e3dfb91-ad09-4774-b98a-ab4c04edb32e
    options_attributes:
      -
        answer: "Support."
        explanation: "Almost correct. But there is more than one correct answer."
      -
        answer: "Confidence."
        explanation: "Almost correct. But there is more than one correct answer."
    
      -
        answer: "Lift."
        explanation: "Almost correct. But there is more than one correct answer."
        
      -
        answer: "All of the above."
        explanation: "Correct."
        correct: true
        
  -
    question: "What's the definition of lift in the Apriori algorithm?"
    uuid: fe1aed6e-ee4d-41da-9b2c-c484e2b1dbcf
    outcome: 6869177c-fd84-45ba-b9ed-8f7d00ce36af
    options_attributes:
      -
        answer: "Lift(A→B) = (Transactions containing both (A and B))/(Transactions containing A)"
        explanation: "Incorrect. This is the definition of confidence."
      -
        answer: "Lift(A→B) = (Confidence (A→B))/(Support (B))"
        explanation: "Correct."
        correct: true
      -
        answer: "Lift(A→B) = (Confidence (A→B))*(Support (B))"
        explanation: "Incorrect."
      -
        answer: "Lift(A) = (Transactions containing (A))/(Total Transactions)"
        explanation: "Incorrect. This is the definition of support."
    
---