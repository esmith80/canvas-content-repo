---
name: "Data Preparation for NLP"
uuid: 22cd8f69-db83-4d7f-be98-abbed2439c3f
duration: 15
questions:

  -
    question: "What is the typical interaction between humans and machines using NLP?"
    uuid: 0bc5cf6d-ad44-4dab-a21a-c3827ebf2928
    outcome: 1128ea71-ddb6-459f-99fc-4408d51c71b9
    options_attributes:
      -
        answer: "A human talks to a machine."
        explanation: "Almost correct. There is more than one correct answer."

      -
        answer: "A machine captures the audio."
        explanation: "Almost correct. There is more than one correct answer."

      -
        answer: "Processing of text data."
        explanation: "Almost correct. There is more than one correct answer."
      -
        answer: "All of the above."
        explanation: "Correct."
        correct: true

  -
    question: "In which of the following text preprocessing steps do we remove words like 'is', 'for', 'with', etc."
    uuid: dba9e792-f7e3-45a0-ae8d-74988285708f
    outcome: 85829e05-03d4-4098-9471-1e15c89fffcf
    options_attributes:
      -
        answer: "Tokenization."
        explanation: "Incorrect. Tokenization is the process of tokenizing or splitting a string into a list of tokens. One can think of tokens as parts, e.g. a word is a token in a sentence, and a sentence is a token in a paragraph."
      -
        answer: "Stemming."
        explanation: "Incorrect. Stemming refers to the process of reducing each word to its root or base."
    
      -
        answer: "Removing stop words."
        explanation: "Correct. Stop words are those words that do not contribute to the deeper meaning of a phrase."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."
        
  -
    question: "Which of these Python libraries doesn't contain English stopwords? "
    uuid: 03623ec8-d1d4-4c3b-8980-930285597a1f
    outcome: d0a56970-7fbf-4142-8446-5aa94d4af146
    options_attributes:
      -
        answer: "NLTK."
        explanation: "Incorrect. NLTK contains English stopwords."
      -
        answer: "Gensim."
        explanation: "Incorrect. Gensim contains English stopwords."
      -
        answer: "SpaCy."
        explanation: "Incorrect. SpaCy contains English stopwords."
      -
        answer: "All libraries above contain English stopwords."
        explanation: "Correct."
        correct: true
    
---