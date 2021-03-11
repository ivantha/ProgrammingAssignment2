## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix caches the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL

        set <- function( matrix ) {
                mat <<- matrix
                i <<- NULL
        }

        get <- function() {
                ## Return the matrix
                mat
        }

        setInverse <- function(inverse) {
                i <<- inverse
        }

        getInverse <- function() {
                i
        }

        list(set = set,get = get, setInverse = setInverse, 
                getInverse = getInverse)
}


## Computes the special matrix stored by makeCacheMatrix .

cacheSolve <- function(x, ...) {
        mat <- x$getInverse()

        if( !is.null(mat) ) {
                message("getting cached data")
                return(m)
        }

        data <- x$get()
        mat <- solve(data) %*% data
        x$setInverse(mat)
        mat
}
