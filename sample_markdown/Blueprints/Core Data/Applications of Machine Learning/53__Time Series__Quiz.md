---
name: "Time Series I"
uuid: 69f82969-8cca-45e0-a670-5e162cbc5dc6
duration: 20
questions:

  -
    question: "What's the difference between Univariate and Multivariate time series?"
    uuid: 28ee1486-4d68-4ab8-ae0f-c0cc4437fcc1
    outcome: d71278c8-f7dc-41fe-92ab-52c9a581f19f
    options_attributes:
      -
        answer: "Univariate time series has one dependent variable and Multivariate has more than one dependent variable."
        explanation: "Correct."
        correct: true

      -
        answer: "Multivariate time series has one dependent variable, Univariate has more than one dependent variable."
        explanation: "Incorrect."

      -
        answer: "Univariate time series are always stationary, Multivariate are always non-stationary."
        explanation: "Incorrect. Both types of time series could be stationary or non-stationary."
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "For which type of tasks can we use moving average?"
    uuid: 192ca98a-b458-48a0-b634-7577360a9b93
    outcome: 2ceb5b57-e1ee-46ce-a87c-2348ae4552ea
    options_attributes:
      -
        answer: "Data preparation."
        explanation: "Almost correct. But there is more than one correct answer."

      -
        answer: "Feature engineering."
        explanation: "Almost correct. But there is more than one correct answer."

      -
        answer: "Making predictions."
        explanation: "Almost correct. But there is more than one correct answer."
      -
        answer: "All of the above."
        explanation: "Correct."
        correct: true
        
  -
    question: "Which condition must be satisfied for a time series to be stationary?"
    uuid: 60c13392-76e2-42b7-bed4-2fa0a7819312
    outcome: e540b695-908b-4e89-91fd-6e4f8a37c544
    options_attributes:
      -
        answer: "Mean doesn't depend on time."
        explanation: "Almost correct. But there is more than one correct answer."
      -
        answer: "Variance doesn't depend on time."
        explanation: "Almost correct. But there is more than one correct answer."
      -
        answer: "Autocorrelation doesn't depend on time."
        explanation: "Almost correct. But there is more than one correct answer."
      -
        answer: "All of the above."
        explanation: "Correct."
        correct: true
  -
    question: "Which type of model is NOT used for decomposition?"
    uuid: bdb517af-bef3-4ee0-9995-b03f7cbf56ee
    outcome: c7562658-a774-4d5f-9238-84847c328042
    options_attributes:
      -
        answer: "Additive model."
        explanation: "Incorrect. We use this model for decomposition."
      -
        answer: "Multiplicative model."
        explanation: "Incorrect. We use this model for decomposition."
      -
        answer: "Exponential model."
        explanation: "Correct."
        correct: true
      -
        answer: "All of the above."
        explanation: "Incorrect. Only one type of model is NOT used for decomposition."
    
---