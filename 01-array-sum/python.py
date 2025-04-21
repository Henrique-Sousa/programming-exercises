from functools import reduce

def array_sum(arr):
    sum = 0
    for el in arr:
        sum += el
    return sum

def funct_array_sum(arr):
    return 
    

arr = [1, 2, 3, 4, 10, 11]

imper_res = array_sum(arr);
funct_res = reduce(lambda a, c: a + c, arr)

assert imper_res == 31
assert funct_res == 31
