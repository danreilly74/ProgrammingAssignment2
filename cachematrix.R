## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix and caches its solution

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
			x<<- y
			m<<- NULL
	}
	get <- function() x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


## This function checks to see if a solution is already cached
## then returns the cached solution or computes the inverse of the matrix


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
	m <- x$getinverse()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m

        
}
