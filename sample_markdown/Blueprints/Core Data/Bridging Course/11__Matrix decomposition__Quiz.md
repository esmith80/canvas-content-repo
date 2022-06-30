---
uuid: c9147a14-86dd-4f0e-847f-ff2f070c5ea6
name: 'Matrix decomposition'
duration: 20
questions:

  -
    question: "Which of the following statements is true?"
    uuid: eec9bb95-3013-4d49-a151-41ef3e5d6600
    outcome: 9a0152dc-8b26-47e4-b745-3e4f5439c1a3
    options_attributes:
      -
        answer: "Eigenvalues are only real numbers."
        explanation: "Incorrect. Eigenvalues can also be complex numbers."
      -
        answer: "Eigenvectors must have the same length."
        explanation: "Almost correct. In most software libraries eigenvectors have a length of one. But it is not necessary."
      -
        answer: "Eigenvectors of real symmetric matrices are **all** perpendicular to each other."
        explanation: "Correct! The matrix containing all eigenvectors is orthogonal."
        correct: true
      -
        answer: "None of the above."
        explanation: "Incorrect."

  -
    question: "What happens with a vector with the length n, when it is multiplied from the left side by a diagonal matrix (n x n) with threes on the main diagonal."
    uuid: 8bea6a0a-66b5-414e-9e36-f6abc218f01f
    outcome: f68727f9-819d-4b10-8ac8-8e883d557986
    options_attributes:
      -
        answer: "The vector coordinates are multiplied by three."
        explanation: "Correct. This transformation changes the length of the vector but not the direction."
        correct: true
      -
        answer: "The vector coordinates stay the same."
        explanation: "Incorrect. This transformation changes the coordinates."
      -
        answer: "The vector is rotated by three degrees anti-clockwise."
        explanation: "Incorrect! This transformation does not change the direction."
      -
        answer: "None of the above."
        explanation: "Incorrect."

  -
    question: "What does the Numpy `linalg.eig()` function return?"
    uuid: 4b3f5df6-031b-4c96-8d4c-af9a6dd119f3
    outcome: 16dd5ada-ada0-4261-b654-f90015a2c80d
    options_attributes:
      -
        answer: "Two arrays. The first contains eigenvectors, the second contains eigenvalues."
        explanation: "Almost correct, but not in this order."
      -
        answer: "An array with eigenvectors."
        explanation: "Incorrect. This function returns two arrays."
      -
        answer: "Two arrays. The first contains eigenvalues, the second contains eigenvectors in rows."
        explanation: "Almost correct. The second array does not contain eigenvectors in rows."
      -
        answer: "None of the above."
        explanation: "Correct. This function returns two arrays. The first contains eigenvalues and the second contains eigenvectors in columns."
        correct: true

  -
    question: "Which of the following statements is true?"
    uuid: 87ea9b4b-afe4-4f90-9a7d-adfbecff124e
    outcome: 9f2b6951-0d8b-465c-9b56-4d90e7035549
    options_attributes:
      -
        answer: "Eigendecomposition cannot work on square matrices."
        explanation: "Incorrect. Eigendecomposition works only on square matrices."
      -
        answer: "SVD works only on square matrices."
        explanation: "Incorrect. SVD works on all matrices."

      -
        answer: "Singular values are always real, while eigenvalues do not need to be real."
        explanation: "Correct."
        correct: true

      -
        answer: "None of the above."
        explanation: "Incorrect."

---
