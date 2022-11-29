## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(sample(1:50,9),3,3)) {
        ss <- NULL
        set <- function(y)
        {
          x <- y
          ss <- NULL      
        }

        get <- function() 
        {
                x
        }

        setsolve <- function(solve) 
        {
                ss <- solve
        }

        getsolve <- function()
        {
                ss
        }

        list(set=set, get=get, setsolve = setsolve, getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        if(!is.null(ss))
        {
                message("getting inversed matrix")
                return(ss)
        }

        data <- x$get()
        ss <- solve(data, ...)
        x$setsolve(ss)
        ss
}
