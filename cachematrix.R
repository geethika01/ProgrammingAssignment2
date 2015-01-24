## Put comments here that give an overall description of what your
## functions do

## Create matrix object, and returns a list of functions to get the matrix, 
## get the inverse of the matrix,
## and set the inverse of the matrix. 
makeCacheMatrix <- function(x = matrix()) {
  #create the matrix
  mtx <- matrix(vector,numrow, numcol)
  
  # assign matrix inverse value to NULL
  mtxInv <- NULL
  
  # get matrix inverse
  getmtxInv <- function() mtxInv
  
  # get matrix data
  getData <- function() mtx
  
  # set the matrix inverse values
  setInv <- function(inv) mtxInv <<- inv
  
  # create output list
  outputList <- list(getmatrix = getData, getmtxInvVal = getmtxInv, setInvVal = setInv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
