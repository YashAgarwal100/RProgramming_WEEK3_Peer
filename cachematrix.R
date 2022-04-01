makeCacheMatrix <- function(a = matrix()) 
{
  
  cinverse <- NULL
  
  
  set <- function(b)
    
  {
    a <<- b
    
    cinverse <<- NULL
  }
  
  get <- function() a
  
  setInverse <- function(solveMatrix) cinverse <<- solveMatrix
  
  getInverse <- function() cinverse
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(a, ...) 
{

  cinverse <- a$getInverse()
  
  
  if(!is.null(cinverse))
    
    
  {
    message("Data Receiving")
    
    return(cinverse)
  }
  
  data <- a$get()
  
  cinverse <- solve(data)
  
  a$setInverse(cinverse)
  
  cinverse
}

