function array_sum(arr() as integer, n as integer) as integer
    dim sum as integer = 0
    dim i as integer
    for i=0 to n-1
        sum += arr(i)
    next i
    return sum
end function 

dim n as integer = 6
dim arr(6) as integer = {1, 2, 3, 4, 10, 11}

dim sum as integer = array_sum(arr(), n)
print sum
