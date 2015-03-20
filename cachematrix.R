##The first function, 'makeCachematrix' creates a matrix and does the following that contains 4 member functions: 
##set the value of the matrix set the value of the matrix,setInv sets the inverse of the matrix,getInv gets the inverse of the matrix 
##it uses <<- assignment operator so that these internal variables are not exposed to the outside environment. 

makeCacheMatrix <- function(x = matrix()) {
  
  xinv <- NULL # this is where the result of inversion is stored
  # A set function, use this to set a matrix to object created by makeCacheMatrix function
  # e.g. makeCacheMatrix(matrix1) # here we work on matrix1
  
  set <- function(y) {
    x <<- y
    xinv <<- NULL # it also initialises xinv to null
  }
  
  get <- function() x # return the input matrix
  setInv <- function(inv) xinv <<- inv # set the inversed matrix
  getInv <- function() xinv # return the inversed matrix
  # return a list that contains these functions, so that we can use
  # makeCacheMatrix object like these
  # x <- makeCacheMatrix(matrix1)
  # x$set(newmatrix) # to change matrix
  # x$get # to get the setted matrix
  # x$setInv # to set the inversed matrix
  # x$getInv # to get the inversed matrix
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


##This function computes the inverse of the special matrix returned by `makeCacheMatrix` above. If the inverse has
##already been calculated (and the matrix has not changed), then `cacheSolve` should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
  m <- x$getInv() # get the inversed matrix from object x
  # it will be null if uncalculated, remember the first line "xinv <- NULL" in the previous function
  if(!is.null(m)) { # if the inversion result is there
    message("getting cached data")
    return(m) # return the calculated inversion
  }
  data <- x$get() # if not, we do x$get to get the matrix object
  m <- solve(data) # we solve it
  x$setInv(m) # we then set it to the object
  m # return the solved result
}

##Test cases
# generate a test matrix 3 columns 3 rows
# test <- matrix(c(3,3,5,4,5,3,5,6,7),nrow=3,ncol=3)
# generate the makeCacheMatrix object with this matrix
# testCached <- makeCacheMatrix(test)
#testInv<-cacheSolve(testCached)
#testInv