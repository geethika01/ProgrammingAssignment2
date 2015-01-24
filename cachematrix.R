## makeCacheMatrix function and the cacheSolve function solves and caches inverse of a 
## given invertible square matrix, avoiding recomputation of it. 

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

## Get the inverse of the matrix, check whether it is NULL, if so, solve for matrix inverse and 
## set the matrix inverse object to the computated inverse matrix, such that when the function is recalled, 
## its not recalculated, rather cached.
cacheSolve <- function(outputList, ...) {
  # get matrix inverse from the list returned from makeCacheMatrix function
  mtxInvFromList <- outputList$getmtxInvVal()
  
  # Check for the NULL value of matrix inverse object
  if (is.null(mtxInvFromList)) { 
    print("NO CACHED values, calculating")
    
    # if the " if" condition failed, calc matrix inverse
    dat <- outputList$getmatrix()
    mtxInvFromList <- solve(dat)
    
    # set the matrix inverse values
    outputList$setInvVal(mtxInvFromList)
  }
  else {
    message("getting cached matrix inverse values")
  }
  return (mtxInvFromList)      
}
