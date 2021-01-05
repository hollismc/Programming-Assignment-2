makecachematrix <- function(x = matrix()) {
    #set the value of the matrix
    i <- NULL
    #write a function that gets the value of the matrix
      set <- function(y) {
          x <<- y
          i <<- NULL
      }
          
    #write a function that sets the inverse
        setinverse <- function(inverse) { i <<- inverse }
    #write a function that gets the inverse
        get <- function(){x}
        getinverse <- function() {i}
   #output will be a list of the functions  
            list(set = set, get =get, setinverse = setinverse, getinverse = getinverse)
}
b <- makecachematrix(x = matrix(1:4, 2, 2))  
b

cachesolve <- function(x) {
    #get inverse of the matrix
    i <- x$getinverse() 
    #if the inverse is not null !null, then return the inverse
    if (!is.null(i)) {
        message("getting the cache data")
        return(i)
    }
 data <-  x$get()  
 solvedata <- solve(data)
 x$setinverse(solvedata)
 return(solvedata)
}
    
    #otherwise calculate the inverse  

    
