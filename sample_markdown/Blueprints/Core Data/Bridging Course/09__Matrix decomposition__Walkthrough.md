

In this reading, we will study **the singular value decomposition** method (or **SVD**) for decomposing a matrix into its constituent elements.

After completing this reading, you will know:

* What the _singular value decomposition_ is.
* How to calculate an _SVD_ and reconstruct a rectangular and a square matrix from _SVD_ elements.

## Matrix decomposition

__Matrix decomposition__ is a method that reduces a matrix into its constituent parts, which makes it easier to do more complex matrix operations. _Matrix decomposition_ methods, also called **matrix factorization** methods, are the foundation of linear algebra in computers, as well as basic operations such as solving systems of linear equations, calculating the inverse, and calculating the determinant of a matrix.

## Singular value decomposition (SVD)

Perhaps the best known and most frequently used _matrix decomposition_ method is _the singular value decomposition_. All matrices have an _SVD_, which makes it more universal than other methods, i.e. the eigendecomposition. As such, it is often used in a wide array of applications including compressing, denoising, and data reduction.


> #### Instruction
> **In case you are interested in details** and theory behind you can read more about the singular value decomposition [**in this article**](https://medium.com/@jonathan_hui/machine-learning-singular-value-decomposition-svd-principal-component-analysis-pca-1d45e885e491).



<!-- -->

It might be hard to get some concepts of SVD by reading only theoretical articles therefore we have an additional tutorial that will make things more clear.

## Decomposition of images using SVD

One of the applications of SVD is image compression. The key here is that a black and white image is simply a matrix where the numbers represent the intensity of a given pixel. This matrix can be decomposed just like any other. 

We did already load the picture into Python [in a previous activity](/03fe597e-d1f4-40a0-ade3-d08854f50645) and we will work with the same picture of the flower now. In case we don't have it available it can be downloaded from [here](https://drive.google.com/file/d/1sFIzRG8AzyxAyU2BjjrNgnrMbTyjrRB-/view).

Firstly, we need to import the packages we need.

```python
import matplotlib.pyplot as plt
import numpy as np

from PIL import Image
```

We can proceed by loading the image into Python. We will convert it to a black and white image using the function `.convert('LA')`.

```python
img = Image.open("./flower_square.jpg")
imggray = img.convert('LA') 
plt.figure(figsize=(9, 6))
plt.imshow(imggray)
```

Now, we will convert the image data into a NumPy matrix and plot the result to show the picture is unchanged. We added a couple of print statements to track the shape of the objects during the transformation.

```python
imgmat = np.array(list(imggray.getdata(band=0)), float)
print(type(imgmat))
print(imgmat.shape)
imgmat.shape = (imggray.size[1], imggray.size[0])
print(imgmat.shape)

imgmat = np.matrix(imgmat)
print(type(imgmat))
print(imgmat.shape)

plt.figure(figsize=(9,6))
plt.imshow(imgmat, cmap='gray')
```

At this point, we are ready to create SVD of our image using NumPy function `svd`.

```python
U, sigma, V = np.linalg.svd(imgmat)
```

Now, we compute an approximation of the image using **ONLY** the first column of **U** and the first row of **V**. This approximation reproduces the most prominent feature of the image, the light area on top and the dark area on the bottom.

```python
reconstimg = np.matrix(U[:, :1]) * np.diag(sigma[:1]) * np.matrix(V[:1, :])
plt.imshow(reconstimg, cmap='gray')
```

> #### Note
> Each column of pixels in the image above is a different weighting of the same values, the first column of matrix **U**.

Even with just the second and third vectors, the shape of the arch begins to appear.

```python
# we have replaced 1 from previous code by i
for i in range(2, 4):
    reconstimg = np.matrix(U[:, :i]) * np.diag(sigma[:i]) * np.matrix(V[:i, :])
    plt.imshow(reconstimg, cmap='gray')
    title = "n = %s" % i
    plt.title(title)
    plt.show()
```

We can check the same reconstruction for more vectors:

```python
for i in range(5, 51, 5):
    reconstimg = np.matrix(U[:, :i]) * np.diag(sigma[:i]) * np.matrix(V[:i, :])
    plt.imshow(reconstimg, cmap='gray')
    title = "n = %s" % i
    plt.title(title)
    plt.show()
```

> #### Note
> We can notice that when we reconstruct the image using 50 vectors it looks almost the same as the original one. The SVD plays an important role in image compression.



## Conclusion

We have learned about _matrix decomposition_. It is a crucial part of reducing the dimensions of matrices (or data in machine learning), which plays a significant role because of the volume of data the data scientists have to deal with.

