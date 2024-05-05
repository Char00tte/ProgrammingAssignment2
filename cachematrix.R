## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Below are some functions used to store a matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x<<- y
                iny<<- NULL
        }
        get <- funtion()x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = fet,
             setInverse = setInverse,
             getInverse = getInverse,)
}

## Write a short comment describing this function
## This function computes the inverse of a "matrix" created by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed)
## then it should retrieve the inverse from the cache.
cacheSolve <- function(x,...){
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("fetting cached data")
                return(inv)
        }
        mat<-x$get()
        inv<-solve(mat,...)
        x$getInverse()
        inv
}

