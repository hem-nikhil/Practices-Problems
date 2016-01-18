# def fib(n)
# 	return 0 if n==1
# 	return 1 if n==2
# 	fib(n-1) + fib(n-2)
# end


puts  (1..5).inject([0,1]){|fib| fib << fib.last(2).inject(:+)}
