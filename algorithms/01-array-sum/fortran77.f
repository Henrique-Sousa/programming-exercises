      integer function sum_array(n, arr)
          integer i, n, arr(n)
          sum_array = 0
          do 10 i = 1, n
            sum_array = sum_array + arr(i) 
10        continue
          return
      end
        
      program array_sum
      integer a(6), sum, sum_array
      data a /1, 2, 3, 4, 10, 11/
      sum = sum_array(6, a)
      print *, sum
      end
