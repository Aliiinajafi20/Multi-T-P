from cython.parallel cimport prange
from cython cimport boundscheck,wraparound
from libc.stdio cimport printf

@boundscheck(False)
@wraparound(False)
def PerfectNumber(int n):
    cdef unsigned int i
    with nogil:
        for i in prange(1, n,schedule='guided'):
            if checkPerfectNumber(i) == 1:
                printf("%\n", i)
cdef inline int checkPerfectNumber(int n) nogil:
    cdef unsigned int k =1
    cdef unsigned int s =1

    while k<n :
        if n % k == 0:
            s +=  k
            k+= 1

    if s == n:
        return 1
    return 0



