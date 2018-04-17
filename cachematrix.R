## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  xInv <- NULL
  set <- function(y) {
    xInv <<- y
    xInv <<- NULL
  }
  get <- function() x
  setInv <- function(solve) xInv <<- solve
  getInv <- function() xInv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInv(m)
  m
}
