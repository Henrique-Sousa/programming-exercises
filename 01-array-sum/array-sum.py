from functools import reduce

def loop_array_sum(arr):
    sum = 0
    for el in arr:
        sum += el
    return sum

def array_sum(arr):
    return reduce(lambda a, c: a + c, arr)
    
arr = [1, 2, 3, 4, 10, 11]
res1 = array_sum(arr)
res2 = loop_array_sum(arr)
assert res1 == 31
assert res2 == 31
