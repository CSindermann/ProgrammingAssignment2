## Put comments here that give an overall description of what your
## functions do

##example in coursera:
#makeVector <- function(x = numeric()) {
#        m <- NULL
#        set <- function(y) {
#                x <<- y
#                m <<- NULL
#        }
#        get <- function() x
#        setmean <- function(mean) m <<- mean
#        getmean <- function() m
#        list(set = set, get = get,
#             setmean = setmean,
#             getmean = getmean)
#}

## Changing the example ("mean") from coursera to "inverse"

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


##example in coursera:
#cachemean <- function(x, ...) {
#        m <- x$getmean()
#        if(!is.null(m)) {
#                message("getting cached data")
#                return(m)
#        }
#        data <- x$get()
#        m <- mean(data, ...)
#        x$setmean(m)
#        m
#}

## Changing the example ("mean") from coursera to "inverse"

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
