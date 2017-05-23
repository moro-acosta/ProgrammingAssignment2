## this function create a list of functions
## used to store cached inverse matrix in a function scoped 
## variable.

makeCacheMatrix <- function(x = matrix()) {
		inverse <- NULL # Initialize de inverse cached variable
		
		##Set the matrix
		set <- function(y) {
			x <<- y
			inverse <<- NULL
		}
		##Define the get function, return the original matriz
		get <- function() x 
		
		##Function setting inverse value.
		setinverse <- function(solvedmatrix) inverse <<- solvedmatrix
		
		## function getting Matrix inverse
		getinverse <- function() inverse
		
		list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## this funcion takes a object build with makeCacheMatrix
## and get precalculated inverse, if this existe, else calculte
## inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inverse <- x$getinverse()
		if (!is.null(inverse)){
			## when inverse is not null, return precalculated inverse matrix
			print("returning precalculated inverse matri")
			return(inverse)
		}
		##gets the original matrix, calculte the inverse with solve, 
		##and set in the cacheMatrix.
		data <- x$get() ## gets the original matrix
		inverse <- solve(data)
		x$setinverse(inverse)
		inverse
			
}
