import pnmt
import time

n = int(input("enter a number:"))
t = int(input("enter a thread cunt:"))


start_time = time.time()

pnmt.PerfectNumber(n, t)

print("---%s seconds---" % (time.time() - start_time))

