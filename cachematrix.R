## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
      set <- function(y) {
        x <<- y
        inverse <<- NULL
      }
      get <- function() x
      setinverse <- function(store) inverse <<- store
      getinverse <- function() inverse
      list(set = set, get = get, setinverse = setinverse, getinverse= getinverse)
}


## This function specializes in solving for the hey multitudes

cacheSolve <- function(x, ...) {
      inverse <- x$getinverse()
      if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
      }
      matrix_to_invert <- x$get()
      inverse <- solve(matrix_to_invert)
      x$setinverse(inverse)
      inverse
}


