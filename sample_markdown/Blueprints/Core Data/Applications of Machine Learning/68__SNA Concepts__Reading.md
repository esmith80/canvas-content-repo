---
uuid: 746c9877-eabf-4087-8689-0a8f831737ca
duration: 30
---


We're now going to take a look at the main concepts of Social Network Analysis that we should apply every time we work with Graphs.


## SNA Concepts

There are four main areas we need to consider every time we work on Network Analysis:

1. **Building a Network:** How to represent various social networks? What are nodes and what are edges?
2. **Tie Strength**: How to identify strong/weak ties in the network?
3. **Key Players**: How to identify key/central nodes in the network?
4. **Cohesion**: Measures of overall network structure


### Building a Network

Let's work with a simple example from the picture below:

![](https://i.imgur.com/8FZquGG.png)


Based on this conversation, we are able to build a network that is shown in the picture below:

![](https://i.imgur.com/wotCAuk.png)


> #### Instruction
> Before continuing, try to assign the numbers 1 to 4 to Anne, Jim, Mary, and John based on the conversation we've read.


The correct assignment is:

1: Anne <br>
2: Jim <br>
3: Mary <br>
4: John <br>


### Directed vs. Undirected Network

#### Directed Network

The small network above is **Directed network** because it displays **who contacted whom**. We can create the *Edge list* and *Adjacency matrix* for this network.

![](https://i.imgur.com/mQ3kGgh.png)

#### Undirected Network

When we want to display information **who knows whom** we can use **Undirected network**.

![](https://i.imgur.com/gvlKhmb.png)



### Tie Strengths

Weights represent strength of the link. Weights could be:

- Frequency of interaction in period of observation
- Number of items exchanged in period 
- Individual perceptions of strength of
relationship
- Costs in communication or exchange, e.g. distance
- Combinations of these


![](https://i.imgur.com/tm37Esq.png)


### Key Players

How to identify key/central nodes in network? 

There is a couple of metrics we can use to find  important nodes in the network. We will learn more about these in following activities.



### Cohesion

Measures of overall network structure. There is a couple of metrics we can use to find  important nodes in the network. We will learn more about these in following activities.


### Preferential Attachment

It's a property of some networks, where, during their evolution and growth in time, the great majority of new edges are to nodes with an already high degree; the degree of these nodes thus increases disproportionately, compared to most other nodes in the network. The result is a network with few very highly connected nodes and many nodes with a low degree. Such networks are said to exhibit a long-tailed degree distribution.


![](https://i.imgur.com/4pIkTeL.png)

#### Reasons for preferential attachment

- **Popularity** - We want to be associated with popular people, ideas, items, thus further increasing their popularity, irrespective of any objective, measurable characteristics. Also known as "the rich get richer".
- **Quality** - We evaluate people and everything else based on objective quality criteria, so higher quality nodes will naturally attract more attention, faster. Also known as "the good get better".
- **Mixed**: Among nodes of similar attributes, those that reach critical mass first will become `"stars"` with many friends and followers (`"halo effect"`)

## Conclusion

The basic principles we need to remember when dealing with Network Analysis are:

- Build a network
    - what are the nodes?
    - what are the edges?
    - directed or directered graph?
    - what are tie strenghts?
- Analyze Nodes
- Analyze the network

We always need to follow these 3 steps above. We can always use Google to find particular metrics we can use for each part.




