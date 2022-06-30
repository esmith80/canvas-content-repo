---
name: "Forecasting Box-Jenkins"
uuid: 722d8a0e-d425-4be9-b402-3f2f195e07c1
duration: 15
questions:

  -
    question: "What's the definition of the parameter `p` in the ARIMA(p,d,q) model?"
    uuid: d06f2966-5ea7-48aa-ad34-37048ace8410
    outcome: 060561c3-d8e8-4a7b-b917-948363622de5
    options_attributes:
      -
        answer: "The number of times that the raw observations are differenced, also called the degree of differencing."
        explanation: "Incorrect. This is the definition of the `d` parameter."

      -
        answer: "The size of the moving average window, also called the order of moving average."
        explanation: "Incorrect. This is the definition of the `q` parameter."

      -
        answer: "The number of lag observations included in the model, also called the lag order."
        explanation: "Correct."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "Which step is not part of the Box-Jenkins methodolgy?"
    uuid: b762f05c-78b9-4141-9967-091fb6e76f11
    outcome: a7ef42d1-76cf-4fa7-a1cc-ca349db0c8bc
    options_attributes:
      -
        answer: "Identification. Using the data and all related information to help select a sub-class of a model that may best summarize the data."
        explanation: "Incorrect. This step is included."

      -
        answer: "Estimation. Using the data to train the parameters of a model (i.e. the coefficients)."
        explanation: "Incorrect. This step is included."

      -
        answer: "Diagnostic Checking. Evaluating the fitted model in the context of the available data and checking for areas where the model may be improved."
        explanation: "Incorrect. This step is included."
      -
        answer: "None of the above."
        explanation: "Correct. All the steps mentioned above are included in the Box-Jenkins methodology."
        correct: true
        
  -
    question: "Which Python library is widely used for forecasting time series with ARIMA models?"
    uuid: fabeb828-9004-4816-90d1-1cfa7a2ef586
    outcome: 49977701-d63f-4c66-ab83-86be49d2d79f
    options_attributes:
      -
        answer: "Sklearn."
        explanation: "Almost correct. But there is a better library for time series forecasting."
      -
        answer: "Statsmodels."
        explanation: "Correct."
        correct: true
      -
        answer: "Gensim."
        explanation: "Incorrect. This library is used for NLP."
      -
        answer: "Pandas."
        explanation: "Incorrect. This library is used only for preprocessing of data, not for forecasting."
    
---