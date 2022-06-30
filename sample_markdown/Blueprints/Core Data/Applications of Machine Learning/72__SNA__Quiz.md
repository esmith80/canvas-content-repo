---
name: "SNA"
uuid: 37ccaa0b-a9d8-40db-801c-a47aeb65dfd8
duration: 20
questions:

  -
    question: "Which of the following is an important characteristic of social networks?"
    uuid: 423d29af-dc02-4577-b089-3045338323fa
    outcome: bae2930b-d83c-4425-af82-92d9dba13145
    options_attributes:
      -
        answer: "They are an important platform for sending emails."
        explanation: "Incorrect. Even though we can send messages through some of them, from a ML point of view, this is not correct."

      -
        answer: "They are made of different interactions between people."
        explanation: "Correct. We use networks to analyze interactions between people."
        correct: true

      -
        answer: "They are used for storing Network configuration details."
        explanation: "Incorrect."
      
      -
        answer: "None of the above."
        explanation: "Incorrect. One option is correct."

  -
    question: "The graphical representation of a network is consists of links and ____"
    uuid: dd581ca4-aefc-4e4e-bd77-d38bf4e5f96e
    outcome: ad3b6e6f-03ce-43f8-9637-f886a6bac852
    options_attributes:
      -
        answer: "People."
        explanation: "Almost correct. It could be people but it can also be something else."

      -
        answer: "Networks"
        explanation: "Incorrect. The graphical representation of a network is not made up of networks :)."

      -
        answer: "Nodes"
        explanation: "Correct. The network is created from links and nodes, sometimes called vertices."
        correct: true
      -
        answer: "Computers."
        explanation: "Almost correct. If we build a network of computers, it will be computers but it can also be something else."
        
  -
    question: "____ can be used to describe nodes that contain the most amount of information about a network."
    uuid: 32c74396-d39b-4dde-9f97-cb563ed2658a
    outcome: e3738683-dc8e-4837-9b03-46620d85cdad
    options_attributes:
      -
        answer: "Degree centrality"
        explanation: "Incorrect. This metric identifies different nodes."
      -
        answer: "Closeness"
        explanation: "Incorrect. This metric identifies different nodes."
      -
        answer: "Betweenness"
        explanation: "Correct."
        correct: true


  -
    question: "____ can be used to identify nodes that have the most connections to other nodes."
    uuid: 7d393d12-d7b7-463f-9b64-9324a1b4fd51
    outcome: ee9b8b6e-2a20-4676-bb1d-64c0d86d9dad
    options_attributes:
      -
        answer: "Degree centrality"
        explanation: "Correct."
        correct: true
      -
        answer: "Closeness"
        explanation: "Incorrect. This metric identifies different nodes."
      -
        answer: "Eigen centrality"
        explanation: "Incorrect. This metric identifies different nodes."


  -
    question: "____ can be used to identify the most important nodes because they are connected to other important nodes in the network."
    uuid: 1264d6bd-d84c-475c-a585-bad9bea72fab
    outcome: 61774542-a776-41d4-867f-d907b0e8c46c
    options_attributes:
      -
        answer: "Degree centrality"
        explanation: "Incorrect. This metric identifies different nodes."
      -
        answer: "Closeness"
        explanation: "Incorrect. This metric identifies different nodes."
      -
        answer: "Eigen centrality"
        explanation: "Correct."
        correct: true   

---