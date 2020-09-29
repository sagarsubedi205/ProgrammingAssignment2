
## Write a short comment describing this function

	cacheSolve <- function(x, ...) {
		s <- x$getsolve()
 		 if(!is.null(s)) {
   			 message("getting inversed matrix")
   			 return(s)
##Please include your own comment to explain your code

makeCacheMatrix <- function(x = matrix()) {
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

##Please include your own comment to explain your code

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
        ## Return a matrix that is the inverse of 'x'
}
	data <- x$get()
	s <- solve(data, ...)
	x$setsolve(s)
	s
}
