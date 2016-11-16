makeVector<-function(x= numeric()){
m<-NULL
set<-function(y){
x<<-y
m_inverse<<-NULL
}
get <-function() x
setinverse<-function(inverse) m_inverse<<-inverse function(inv)
getinverse<-function() m_inverse
list(set=set,get=get,
setinverse=setinverse,
getinverse=getinverse)
}
##cache solve
cachesolve<-function(x, ...){
m_inverse<-x$getinverse()
if(!is.null(m_inverse)){
message("getting cached data")
return(m_inverse)
}
matrix<-x$get()
m_inverse<-mean(matrix, ...)
x$setinverse(m_inverse)
return(m_inverse)
}
