### Introduction Assignment: Caching the Inverse of a Matrix

Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than computing it
repeatedly (there are also alternatives to matrix inversion that we will
not discuss here). Your assignment is to write a pair of functions that
cache the inverse of a matrix.

Write the following functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then `solve(X)` returns its inverse.


### Assignment # 2: Caching the Inverse of a Matrix

The first function, 'makeCacheMatrix' This function creates a special "matrix" object that can cache its inverse.
1)set the value of the matrix
2)get the value of the matrix
3)setInv sets the inverse of the matrix
4) getInv gets the inverse of the matrix it uses <<- assignment operator so that these internal variables are not exposed to the outside environment.


This secon function 'cacheSolve' computes the inverse of the special matrix returned by `makeCacheMatrix` above. If the inverse has already been calculated (and the matrix has not changed),
then `cacheSolve` should retrieve the inverse from the cache


###For this assignment, assume that the matrix supplied is always invertible. 
Test generate a test matrix 3 columns 3 rows, sample provided below:
test <- matrix(c(3,3,5,4,5,3,5,6,7),nrow=3,ncol=3)
generate the makeCacheMatrix object with this matrix
testCached <- makeCacheMatrix(test)
from now on calculate or retrieve calculated inversion using the cacheSolve function
testInv <- cacheSolve(testCached)



In order to complete this assignment, you must do the following:

1.  Fork the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
    to create a copy under your own account.
2.  Clone your forked GitHub repository to your computer so that you can
    edit the files locally on your own machine.
3.  Edit the R file contained in the git repository and place your
    solution in that file (please do not rename the file).
4.  Commit your completed R file into YOUR git repository and push your
    git branch to the GitHub repository under your account.
5.  Submit to Coursera the URL to your GitHub repository that contains
    the completed R code for the assignment.

###Grading

This assignment will be graded via peer assessment.
