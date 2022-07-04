


So far, we've seen what vectors and matrices are,how we can manipulate them, and also some special types of matrices. We can also perform basic operations on them such as matrix addition and multiplication. 

This reading is here to give us the first look at **linear transformation** and **eigendecomposition**. Try to go through it very carefully because it is quite a complicated topic. However, it is crucial for various parts of the ML process.


## Linear transformation (a.k.a. Matrix Multiplication)

We can imagine matrix multiplication **A*****x** = **b** as a _linear transformation_ of a vector **x** with  a matrix **A**. The coordinates of the vector **x** are now transformed into new ones in a vector **b**. 

> #### Note
> We can _linearly transform_ *n* vectors at once by composing them to a matrix **X**=[**x**<sub>1</sub>,**x**<sub>2</sub>,...,**x**<sub>n</sub>]<sup>T</sup>. Now we have an equation **A*****X** = **B** similar to the one mentioned above where **A** is a transformation matrix, **X** is a matrix composed of the vectors we want to transform, and **B** is a matrix of the transformed vectors.

<!-- -->

> #### Instruction
> Read about [**linear transformation**](https://www.mathsisfun.com/algebra/matrix-transform.html). Focus on the transformation app at the beginning of the page and play around with different transformations.


## Eigendecomposition

_Eigendecomposition_ of a matrix is a type of decomposition that involves decomposing a square matrix into a set of **eigenvectors** and **eigenvalues**.

> #### Warning
> _Eigendecomposition_ is only possible on **square** matrices!

<!-- -->


> #### Instruction
> Watch the video below to learn more about the concepts of eigendecomposition. 

<iframe width="100%" height="315" src="https://www.youtube.com/embed/PFDu9oVAE-g" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



To fully understand the concepts you can combine the knowledge from the video with the article below.


> #### Instruction
> Read about [eigendecomposition](https://www.mathsisfun.com/algebra/eigenvalue.html).

