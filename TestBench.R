source("cachematrix.R") #load cachematrix file for testing

#Case 1
Testcase <- matrix(c(2, 4, 3, 1, 5, 7,2,3,4),nrow=3,  ncol=3)
ResultRef <- solve(Testcase)
MatrixTest <- makeCacheMatrix(Testcase)
ResultTest <- cacheSolve(MatrixTest)
Result <- all(abs(ResultRef-ResultTest)<0.00001)
print(sprintf(" Result from test Case 1: %s",Result))

#Case 2
Testcase <- matrix(c(2),nrow=1,  ncol=1)
ResultRef <- solve(Testcase)
MatrixTest <- makeCacheMatrix(Testcase)
ResultTest <- cacheSolve(MatrixTest)
Result <- all(abs(ResultRef-ResultTest)<0.00001)
print(sprintf(" Result from test Case 2: %s",Result))

#Case 3
Testcase <- matrix(rexp(1024, rate=.1),nrow=32,  ncol=32)
ResultRef <- solve(Testcase)
MatrixTest <- makeCacheMatrix(Testcase)
ResultTest <- cacheSolve(MatrixTest)
Result <- all(abs(ResultRef-ResultTest)<0.00001)
print(sprintf(" Result from test Case 3: %s",Result))

#Case 4
Testcase <- matrix(C(1,0,0,0,1,0,0,0,1),nrow=3,  ncol=3)
ResultRef <- solve(Testcase)
MatrixTest <- makeCacheMatrix(Testcase)
ResultTest <- cacheSolve(MatrixTest)
Result <- all(abs(ResultRef-ResultTest)<0.00001)
print(sprintf(" Result from test Case 4: %s",Result))
