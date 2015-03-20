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
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.


### Assignment # 2: Caching the Inverse of a Matrix

The first function, 'makeCacheMatrix' This function creates a special "matrix" object that can cache its inverse.
1)set the value of the matrix
2)get the value of the matrix
3)setInv sets the inverse of the matrix
4) getInv gets the inverse of the matrix it uses <<- assignment operator so that these internal variables are not exposed to the outside environment.


<!-- -->

   makeCacheMatrix <- function(x = matrix()) {

      xinv <- NULL # this is where the result of inversion is stored
      # A set function, use this to set a matrix to object created by makeCacheMatrix function
      # e.g makeCacheMatrix(testmatrix) # here we work on testmatrix
      # makeCacheMatrix$set(testmatrix1) # here we work on testmatrix1
      set <- function(y) {
	  x <<- y
	  xinv <<- NULL # it also initialises xinv to null
      }

      get <- function() x # return the input matrix
      setInv <- function(inv) xinv <<- inv # set the inversed matrix
      getInv <- function() xinv # return the inversed matrix
      # return a list that contains these functions, so that we can use
      # makeCacheMatrix object like these
      # x <- makeCacheMatrix(testmatrix)
      # x$set(newmatrix) # to change matrix
      # x$get # to get the setted matrix
      # x$setInv # to set the inversed matrix
      # x$getInv # to get the inversed matrix
      list(set = set, get = get,
	       setInv = setInv,
	       getInv = getInv)
  }


This function computes the inverse of the special matrix returned by `makeCacheMatrix` above. If the inverse has already been calculated (and the matrix has not changed),
then `cacheSolve` should retrieve the inverse from the cache

  cacheSolve <- function(x, ...) {
      m <- x$getInv() # get the inversed matrix from object x it will be null if uncalculated, remember the first line "xinv <- NULL" in the previous function
      if(!is.null(m)) { # if the inversion result is there
	  message("getting cached data")
	  return(m) # return the calculated inversion
      }
      data <- x$get() # if not, we do x$get to get the matrix object
      m <- solve(data) # we solve it
      x$setInv(m) # we then set it to the object
      m # return the solved result
  }


For this assignment, assume that the matrix supplied is always invertible. 
 Test generate a test matrix 3 columns 3 rows
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
