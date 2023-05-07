# @param {Integer} n
# @return {Integer}
$cache = {}
def climb_stairs(n)
  return 1 if n.zero?
  return 0 if n.negative?
  return $cache[n] if $cache[n]

  $cache[n] = climb_stairs(n - 1) + climb_stairs(n - 2)
end

def climb_stairs(n)
  steps = [0, 1, 2]
  return steps[n] if n < 3

  (n - 2).times { steps << steps[-1] + steps[-2] }
  steps.last
end

# With constant memory
def climb_stairs(n)
  return 0 if n.zero?
  return 1 if n == 1
  return 2 if n == 2

  l = 1
  r = 2
  (n - 2).times do 
    tmp = r
    r = l + r
    l = tmp
  end
  r
end
