from functools import reduce

def array_sum(arr: list[int]) -> int:
    sum: int = 0
    for el in arr:
        sum += el
    return sum


arr: list[int] = [1, 2, 3, 4, 10, 11]

imper_res = array_sum(arr);
funct_res = reduce(lambda a, c: a + c, arr)

assert imper_res == 31
assert funct_res == 31
