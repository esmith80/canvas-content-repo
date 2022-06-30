---
name: "Market Basket Analysis"
uuid: 7fa0053b-3ee6-4cd6-8e16-8b88c38191f9
duration: 20
questions:

  -
    question: "What is Market Basket Analysis?"
    uuid: 35ca3405-b90e-41c6-b350-6091175c73c0
    outcome: 24fd2e0e-db06-4e55-9a64-f18ee0315c7b
    options_attributes:
      -
        answer: "The process of discovering association rules between variables in a dataset."
        explanation: "Correct."
        correct: true

      -
        answer: "It is the process of developing clusters in order to segregate data and discover relevant categories."
        explanation: "Incorrect. This is a different type of Unsupervised Learning."

      
        answer: "Market Basket Analysis uses Decision Trees to predict outcome."
        explanation: "Incorrect. It is not a predictive algorithm."
      -
        answer: "All of the above."
        explanation: "Incorrect. Only one option is correct."

  -
    question: "*Support* in market basket analysis is 'a general measure of association between two item sets'."
    uuid: 0f9b2947-c8fc-4d3f-819e-942c51498e28
    outcome: b662dfcd-b950-4db9-8eee-762a30c5eedc
    options_attributes:
      -
        answer: "True"
        explanation: "Incorrect. There is another metric for this."

      -
        answer: "False"
        explanation: "Correct!"
        correct: true

  -
    question: "*Confidence* in market basket analysis is:"
    uuid: 806c9fa7-ee20-4c7d-9566-94a0fc20db55
    outcome: 442c26b4-734e-4768-b727-08979d143673
    options_attributes:
      -
        answer: "A general measure of association between two item sets."
        explanation: "Incorrect. We should look for probabilities between two (or more) items."

      -
        answer: "The conditional probability that a transaction contains item set B given that it contains item set A."
        explanation: "Correct!"
        correct: true

      -
        answer: "The probability that two item sets occur together."
        explanation: "Almost correct, but how do we consider how many times they occur on their own?"
        
      -
        answer: "The conditional probability that a transaction contains the item set B given that it does not contain the item set A."
        explanation: "Incorrect. We are looking for different probability."

        
  -
    question: "When discovering association rules, it is most important to look for rules that generate:"
    uuid: f11f4e49-d314-4887-aa7a-e17f2f39caae
    outcome: 1ad18836-b678-4712-978c-637b585465ca
    options_attributes:
      -
        answer: "Low support and confidence"
        explanation: "Incorrect. The confidence of the rule has to be high."

      -
        answer: "Low support but high confidence and great lift."
        explanation: "Almost correct - two out of three are correct."
      
      -
        answer: "High support and confidence, as well as great lift."
        explanation: "Correct!"
        correct: true
      -
        answer: "None of the above"
        explanation: "Incorrect. There is one correct answer."


    
---