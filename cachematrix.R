## This function will cache the steps required to find the inverse the the mean of matrix.
## 

## Get a matrix and calculate the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

     
    invx <- NULL  ##Set inverse to null
    
    set <- function(y) {  #Build matrix
             y <<- x
             invx <<- NULL
    }
    ##get values of matrix
    get <- function()  x
    setInverseMatrix <- function(inverse) invx <<- inverse
    getInverseMatrix <- function() invx
    
    ## save to the current working environment
            list(set = set, get = get,
             setInverseMatrix = setInverseMatrix,
             getInverseMatrix = getInverseMatrix)

}


## Checks to see if x is avaiable and returns the inverse.

cacheSolve <- function(x, ...) {
        ## Try to get the data stored i ncache (inverse of the matrix).
        invx <- x$getInverseMatrix()

        # Inverted matrix otherwise create a matrix
        if (!is.null(invx)) {
                # display matrix on screen
                return(invx)
        }

        # create matrix
        invx <- x$get()

                final_matrix = {
                # set inverted matrix in cache
                x$setInverseMatrix(invx)
                invx <- solve(invx)
        } 

        # display matrix 
        {print(invx)}
}