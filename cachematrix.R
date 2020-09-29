
## Write a short comment describing this function
Our work is to write a pair of functions, namely,
"makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix
makeCacheMatrix is a function which creates a special "matrix" object that can
cache its inverse for the input

	cacheSolve <- function(x, ...) {
		## Return a matrix that is the inverse of 'x
		s <- x$getsolve()
 		 if(!is.null(s)) {
   			 message("getting inversed matrix")
   			 return(s)
##Please include your own comment to explain your code
Caching
Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than compute it in a repeating manner
Here are pair of functions that are used to create a special object that
stores a matrix and caches its inverse.This function creates a special "matrix" object that can cache its inverse.
			 
makeCacheMatrix <- function(x = matrix()) {
## Return a matrix that is the inverse of 'x'	
	
  j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}
