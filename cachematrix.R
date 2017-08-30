## Put comments here that give an overall description of what your
## functions do

## The first function creates a matrix obejct that can cache its inverse by setting the value of the matrix, getting teh value of the amtrix, setting the value of the inverse, then getting the value of the inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x 
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
  

## This function calculates by the inverse of the matrix by using the solve function. Before doing this, it checks the cache to see if the inverse has already been calculated. If the inverse has not been found in the data it will do so and set the value of the inverse in the cache using the setinverse function.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}
