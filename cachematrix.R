## This functions are returning the inverse matrix of an "x" matrics
## (English isn't my native, so the're might be some strange sentences,
## I'm sorry for that)

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  # setting the matrix
  set <- function(matrix) {
    x <<- matrix
    m <<- NULL
  }
  
  getFunction() x # return the matrix
  set_matrix <- function(solve) x <<- solve
  get_matrix <- function() m
  
  # returning a list of the facts
  list(set = set, get = get, set_matrix = set_matrix, get_matrix = get_matrix)

}


## this function returns an inverse version of x matrix

cacheSolve <- function(x, ...) {
  m<-x$getmatrix() # returns a matrix that is inverse of "x"
  
  # if the inverse is already set, then return it
  if(!is.null(m)){ 
    message("getting cached data")
    return(m)
  }
  
  # getting the matrix from the datas
  datas<-x$get()
  m<-solve(datas, ...) # get the inverse
  x$setmatrix(m) # set the inverse
  m  #print the matrix    
}
