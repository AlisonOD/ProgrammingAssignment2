## makeCacheMatrix creates and populates a 3x3 matrix. 
##It calculates inverse of the matrix and makes it available in the cache. 
## cacheSolve takes the inverse matrix from the cache. 
## If not available, it calulates it and returns the result. 

## Creates matrix frame myMat, a 3x3 matrix. 
## Calcualates the inverse of myMat and store result in invMat

makeCacheMatrix <- function(x = matrix()) {
myMat <- matrix(			## create matrix myMat
		c(2,4,6,1,2,3,	## with these data elements
		nrow = 3,         ## with 3 rows
		ncol= 3,		## with 3 columns
		byrow =TRUE) 	## fill matrix by row. 

 invMat <<- solve(myMat) 	## calculate the inverse of the matrix and store it in cache 
					## using the <<- operator

}


## Take calcualtes matrix from cache. 
## If not available, calcualte the result and return

cacheSolve <- function(x, ...) {
 x<-invMat					   ## Assing x matrix invMat from cache
 if(!is.null(x)) {
	message("Getting cached matrix") ## if successful, print message
      return(x)			         ## return inverse matrix
 }

 	solveMat <- solve(myMat)         ## if not in cache, calculate the inverse 
	return(solveMat)			   ## and return result

        ## Return a matrix that is the inverse of 'x'
}
