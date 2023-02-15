def is_palindrome(x)
  x = x.to_s
  x.reverse == x
end

def is_palindrome(x)
  x = x.to_s
  start = 0
  mid = x.length / 2
  last = x.length - 1
  while start < mid
    return false unless x[start] == x[last]

    start += 1
    last -= 1
  end
  true
end
