## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(p = numeric()) {
        m <- NULL
        set <- function(y) {
                p <<- y
                m <<- NULL
        }    
        get <- function () p
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

##This Function creates a matrix that can cache its inverse trhogh the set, than returns its value with get, sets
##its inverse with setinverse and gets its inverse with setinverse

cacheSolve <- function(x, ...) {
        m <- p$getinverse()
        if(!is.null(m)){
                message("getting cahed data")
                return(m)
        }
        data <- p$get()
        m <- solve(data)
        m
}
##this funtion first search for a inverse on the cache, and if it's not there, than calculates the inverse
##of the matrix.

