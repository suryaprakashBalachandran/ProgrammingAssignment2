## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
  reverse <- NULL
  set <- function(c){
    a <<- c
    inv <<- NULL
  }
  get <- function() a
  setInverse <- function(solveMatrix) reverse <<- solveMatrix
  getInverse <- function() reverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    return(inv)
  }
  cachedata <- x$get()
  inv <- solve(cachedata)
  x$setInverse(inv)
  inv      
}