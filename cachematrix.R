## These functions creates a special matrix, calculates its inverse and cache the
## result.If there is no change of the matrix, the cached inverse of the matrix 
## will be returned. It assumes that the matrix input is a square matrix 
## so checking of the input matrix dimension is not done.

## The makeCacheMatrix creates the special matrix and cache the inverse of matrix
## with the setinverse subfunction.

makeCacheMatrix <- function(x = matrix()) {
  inverse_matrix <- NULL
  set <- function(y) {
    x <<- y
    inverse_matrix <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse_i) inverse_matrix <<- inverse_i
  getinverse <- function() inverse_matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The cacheSolve function calculates the inverse of the square matrix 
## then call the the setinverse function of the special matrix to cache 
## the result.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_matrix <- x$getinverse()
  if(!is.null(inverse_matrix)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  inverse_matrix <- solve(data, ...)
  x$setinverse(inverse_matrix)
  inverse_matrix
}


