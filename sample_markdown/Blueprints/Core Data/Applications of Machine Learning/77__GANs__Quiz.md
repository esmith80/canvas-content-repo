---
name: "GANs"
uuid: 9352b2bb-00ac-4f13-877d-5920b76b1145
duration: 15
questions:


  -
    question: "`GANs architecture involves two sub-models: a _____ model for generating new examples and a _____ model for classifying whether the generated examples are real.` Choose two words to complete the sentence."
    uuid: c623b106-e8b3-4d59-a103-e09bba36edc7
    outcome: dab71ac7-fccb-4fdf-bad6-99df66cbcfe7
    options_attributes:
      -
        answer: "discriminator, linear"
        explanation: "Incorrect. A discriminator model does not generate new examples. A linear model is not a part of GANs."

      -
        answer: "unsupervised, discriminator"
        explanation: "Incorrect. Unsupervised model is not used for generating new examples."

      -
        answer: "discriminator, generator"
        explanation: "Almost correct but the order is wrong."
      -
        answer: "generator, discriminator"
        explanation: "Correct."
        correct: true

  -
    question: "A so called `generator` model in GANs is a classic example of supervised learning."
    uuid: 4ecea171-f55f-4543-8bd3-8298d8160561
    outcome: 560519f5-c5a6-495f-ab46-ecda5e1d96e7
    options_attributes:
      -
        answer: "False"
        explanation: "Correct."
        correct: true

      -
        answer: "True"
        explanation: "Incorrect. There is no teacher in this model."
      
  -
    question: "GANs can be strictly used with images only."
    uuid: 5f24dbbb-23c9-4484-839a-77fa79645c7b
    outcome: 0a378ad3-da0f-4fce-8b03-3f0b045964b5
    options_attributes:
      -
        answer: "True"
        explanation: "Incorrect. We can also use other types of data."
      -
        answer: "False"
        explanation: "Correct. We can also use other types of data."
        correct: true
    
---