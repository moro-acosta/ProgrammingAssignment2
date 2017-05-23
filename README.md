### Introduction

This second programming assignment will require you to write an R
function that is able to cache potentially time-consuming computations.
For example, taking the mean of a numeric vector is typically a fast
operation. However, for a very long vector, it may take too long to
compute the mean, especially if it has to be computed repeatedly (e.g.
in a loop). If the contents of a vector are not changing, it may make
sense to cache the value of the mean so that when we need it again, it
can be looked up in the cache rather than recomputed. In this
Programming Assignment you will take advantage of the scoping rules of
the R language and how they can be manipulated to preserve state inside
of an R object.

### Example: Caching the inverse of Matrix

1. Create a simple invertible matrix

x <- matrix(c(2,5,1,3),2,2)

2. Create a cache matrix

cm <- makeCacheMatrix(x)

3. get inverse from original matrix (x), the first invocation, the inverse was computed

cacheSolve(cm)

     [,1] [,2]
[1,]    3   -1
[2,]   -5    2


4. run again cacheSolve function, the inverse was get from cached variable.

[1] "returning precalculated inverse matri"
     [,1] [,2]
[1,]    3   -1
[2,]   -5    2
