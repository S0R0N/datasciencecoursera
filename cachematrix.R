## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# the matriz i receive is square, inversible and valid matrix.
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL #mean saver variable
    set <- function(y) { #Will get the expected matrix
        x <<- y
        i <<- NULL # reseting the mean value and the new matrix
    }
    get <- function() x #gets the value of the matrix
    setinv <- function(inv) i <<- inv# i dont know how it calculates if i dont give the function anything to operate
    getinv <- function() i #retrieves the calculated value
    list(set = set, get = get, #sets the output list. 
         setinv = setinv,
         getinv = getinv)
}


## Write a short comment describing this function
#This one recieve the super matrix created above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinv()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinv(i)
    i
}
