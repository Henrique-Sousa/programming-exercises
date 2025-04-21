from functools import reduce

def array_sum(ar):
    return reduce(lambda a, c: a + c, ar)  
    
arr = [1, 2, 3, 4, 10, 11]
result = array_sum(arr)
assert result == 31
