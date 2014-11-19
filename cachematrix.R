## makeCacheMatrix function has three local variables apart from argument x which is a vector. 
## These three local variables are 'mat', 'matinv' and y. All of these three variables are matrix.
## 'mat'is defined as a 3x3 matrix with given values. 'matinv' takes the inverse of the matrix 'mat'.
## The 'mat' matrix is stored as cache in variable 'x'. 
## The 'matinv' matrix is stored as cache in variable 'y'.

makeCacheMatrix <- function(x = matrix()) {
mat<-matrix()
matinv<-matrix()
y<-matrix()
mat<-matrix(c(1,5,3,4,5,6,7,8,9), nrow =3, ncol = 3)
matinv<-solve(mat)
x<<-mat
y<<-matinv
}


## CacheSolve function first assigns the variable 'z' (a matrix data class) to the function makeCacheMatrix(x)
## It then checks if the matrix 'Z' is the same as variable matrix 'x'. Where 'z' is the same as 'x', it returns the matrix 'y' (cached inverse of matrix 'x')
## In case matrix 'z' is not equal to 'x', the matrix 'z' is assigned to inverse of matrix 'x'and the function returns the matrix 'z' (inverse of matrix 'x')

cacheSolve <- function(x) {
z<-matrix()
z<-makeCacheMatrix(x)
if(is.matrix(z) && is.matrix(x) && dim(z)==dim(x) && all(z==x)){
message ("Getting cached data") 
return(y)}
else{
z<-solve(x) 
message ("Getting non cached data")
return(z)
}
}

