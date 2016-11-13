makeVector<-function(x= numeric()){
        m<-NULL
        set<-function(y){
        x<<-y #set(y)
        m<<-NULL
}
get <-function() x
setinv<-function(inv) m<<-inverse
getinv<-function() m
list(set=set,get=get,
setinv=setinv,
getinv=getinv)
}
        
##cache solve
cachesolve<-function(x, ...){
        m<-x$getinverse()
        if(!is.null(m)){
        message("getting cached data")
        return(m_inverse)
}
matrix<-x$get()
m<-mean(matrix, ...)
x$setinverse(m)
return(m)
}
