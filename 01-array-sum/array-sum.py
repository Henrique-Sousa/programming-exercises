from functools import reduce

def imper_array_sum(arr):
    sum = 0
    for el in arr:
        sum += el
    return sum

def funct_array_sum(arr):
    return reduce(lambda a, c: a + c, arr)
    

arr = [1, 2, 3, 4, 10, 11]

assert imper_array_sum(arr) == 31
assert funct_array_sum(arr) == 31
