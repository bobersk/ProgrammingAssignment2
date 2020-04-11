## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Week 3 assignment to cache the inverse of a matrix

        makeCacheMatrix <- function(x = matrix()) {                      # create list of functions
                m <- NULL                                                # clears matrix "m"
                set <- function(y) {                                     # set value of the vector
                        x <<- y
                        m <<- NULL
                }
                get <- function() x                                      # get value of the vector
                setinverse <- function(inverse) m <<- inverse            # set value of INVERSE vector, not MEAN
                getinverse <- function() m                               # set value of inverse vector
                list(set = set,                                          # return a list of the variables
                     get = get,
                     setinverse = setinverse,
                     getinverse = getinverse)
        }


## Write a short comment describing this function
## Week 3 assignment to cache the inverse of a matrix

cacheSolve <- function(x, ...) {                                 # define a new function
                m <- x$getinverse()                                      # check if this has been calc'd before
                if (!is.null(m)) {
                        message("getting cached data")                   # return a message if it has been calc'd
                        return(m)                                        # return cached value
                }
                data <- x$get()                                          # put matrix ino "data"
                m <- solve(data, ...)                                    # invert "data" put into "m"
                x$setinverse(m)                                          # put "m" into cache
                m                                                        # print "m"
        }