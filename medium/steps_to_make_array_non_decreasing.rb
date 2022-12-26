# Naive
def total_steps(nums)
  steps = 0
  loop do
    new_nums = steps(nums)
    break if nums == new_nums

    nums = new_nums
    steps += 1
  end
  steps
end

def steps(nums)
  new_nums = []
  nums.each_with_index do |num, idx|
    if idx.zero?
      new_nums << num
      next
    end

    new_nums << num if nums[idx - 1] <= nums[idx]
  end
  new_nums
end

# O(N) optimized
def total_steps(nums)
  dp = Array.new(nums.length, 0)
  stack = []
  steps = 0
  last = nums.size - 1
  last.downto(0) do |i|
    while (!stack.empty? && nums[stack.last] < nums[i])
      dp[i] += 1
      dp[i] = [dp[i], dp[stack.last]].max
      stack.pop
    end
    steps = [steps, dp[i]].max
    stack.push(i)
  end
  steps
end
