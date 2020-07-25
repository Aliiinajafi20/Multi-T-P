import PerfectNumber
import time
start_time = time.time()

n = int(input("enter aNumber:"))
k = 1
while k <= n:
    if PerfectNumber.PerfectNumber(k):
        print(k)
    k += 1
print("---%s seconds---" % (time.time() - start_time))