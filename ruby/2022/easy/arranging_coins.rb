# O(N) solution. Can use Gauss's summation w/ binary search for log(n)
# There's also a O(1) math solution as well
def arrange_coins(n)
  k = 0
  while n >= k + 1
    n -= k + 1
    k += 1
  end
  k
end
