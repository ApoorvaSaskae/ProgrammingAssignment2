#The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to

#set the value of the matrix
#get the value of the matrix
#set the value of the inverse of matrix
#get the value of the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
        imat <- NULL
        set <- function(y) {
                x <<- y
                imat <<- NULL
        }
        get <- function() x
        setinverse <- function(iv) imat <<- iv
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## The below code is to cache if it already exists or find the inverse

cacheSolve <- function(x, ...) {
       
        imat <- x$getinverse()
        if(!is.null(imat)) {
                message("getting cached data")
                return(imat)
        }
        data <- x$getinverse()
        imat <- solve(data, ...)
        x$setinverse(imat)
        imat
}
