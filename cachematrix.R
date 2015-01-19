## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   inv <- NULL
   set <- function(y) {
      x <<- y
      inv <<- NULL
   }
   get <- function() x
   setinverse <- function(inverse) inv <<- inverse
   getinverse <- function() inv
   ## Return a list of functions
   list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message("Getting cached data .... ")
		return(inv)
	}
        message("No cached data found. Calculating the inverse .... ")
	## Store the matrix in 'data'
	data <- x$get()
	## Now compute the inverse using 'solve'
	inv <- solve(data)
	## Assign the result to x
	x$setinverse(inv)
	return(inv)
	## For debug
	##inv
}
