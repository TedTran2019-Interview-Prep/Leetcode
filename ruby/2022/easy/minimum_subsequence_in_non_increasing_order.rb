def min_subsequence(nums)
  min = []
  min_sum = 0
  nums.sort!
  total = nums.sum
  until min_sum > total || nums.empty?
    min << nums.pop
    min_sum += min[-1]
    total -= min[-1]
  end
  min
end
