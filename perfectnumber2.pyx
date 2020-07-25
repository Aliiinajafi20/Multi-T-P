def PerfectNumber(int n):
    cdef unsigned int i
    for i in range(1, n):
        if checkperfectnumber(i)==1 :
            print(i)

cdef inline int checkperfectnumber(int n) nogil:
    cdef unsigned int k
    cdef unsigned int s
    k = 1
    s = 0
    while k < n :
        if n % k == 0:
            s += k
        k += 1


    if s == n:
        return  1


    return  0