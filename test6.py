import PerfectNumber
import time

start_time = time.time()

n = int(input("enter anumber:"))

PerfectNumber.PerfectNumber(n)

print("---%s seconds ---" % (time.time() - start_time))
