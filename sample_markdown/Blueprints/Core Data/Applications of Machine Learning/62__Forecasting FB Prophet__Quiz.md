---
name: "Forecasting FB Prophet"
uuid: a09d12cd-3ca1-401f-a0aa-b687bd626089
duration: 15
questions:

  -
    question: "What is at the core of the Prophet procedure?"
    uuid: dadd162b-f708-43fc-9b5b-e3f8aa7dcbf5
    outcome: 6e1c196e-e95b-4a11-b690-4951a8727414
    options_attributes:
      -
        answer: "Additive regression model"
        explanation: "Correct."
        correct: true

      -
        answer: "Multiplicative regression model"
        explanation: "Incorrect. It's a regression model but not multiplicative one."

      -
        answer: "Additive classification model"
        explanation: "Incorrect. It isn't a classification model."
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "What is the correct input for Prohpet model?"
    uuid: 16ff955e-0bbc-4c7d-b4a7-eec9cfee3757
    outcome: 81e51ae6-3729-4ceb-aa99-0f3ffd9b52d6
    options_attributes:
      -
        answer: "A series with independent variable and a series with the dependent variable."
        explanation: "Incorrect. The input is not a series."

      -
        answer: "A data-frame with columns named `X` and `y`."
        explanation: "Almost correct. Prophet accepts a data-frame as the input but with a different columns naming convention."

      -
        answer: "A data-frame with columns named `ds` and `y`."
        explanation: "Correct."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."      
  -
    question: "Let's say we have an instance of Prophet saved in the `m` variable. Which method can prepare data for future predictions?"
    uuid: 32fb19fe-4c71-4273-b9ff-eaa931eb9310
    outcome: 97a62316-5d91-42b6-a679-a46a45cd375a
    options_attributes:
      -
        answer: "fit() method on `m`."
        explanation: "Incorrect. This method only fits the model on past observations."
      -
        answer: "predict() method on `m`."
        explanation: "Incorrect. This method doesn't prepare the data."
      -
        answer: "make_future_dataframe() on `m`."
        explanation: "Correct."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

---