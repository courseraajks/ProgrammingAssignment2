## Caching the inverse of the matrix
## makeCacheMatrix: This function creates a special "matrix" object  that can cache its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<- NULL
        
 ##Set the matrix
        set<-function(y){
        x<<-y
        m<<-NULL
}
   
## Get the matrix
  get<-function(){
  x
          
## set the inverse of the matrix
setInverse<-function(inverse){
i<<- inverse
}
          
## get the inverse of the matrix
getInverse<-function(){
m
        
list(set=set,
     get=get,
     setInverse=setInverse,
     getInverse=getInverse)
}


## cacheSolve: This function computes the inverse of the special"matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverse()
        if(!is.null(m)){
           message("getting cached data")
           return(m)
                
 ##get the matrix
   data<-x$get()
  m<-solve(data)%%data
                
 ##set the inverse
   x$setInverse(m)
   m
}
