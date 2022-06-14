def rob(nums)
  return 0 if nums.length.zero?
  return nums.first if nums.length == 1
  return nums.max if nums.length == 2

  [rob_help(nums[0..-2]), rob_help(nums[1..-1])].max
end

def rob_help(nums)
  return 0 if nums.length.zero?
  return nums.first if nums.length == 1
  return nums.max if nums.length == 2

  total = nums[0...2]
  total << (nums[2] + nums[0])
  (3...nums.length).each do |idx|
    total << nums[idx] + [total[idx - 2], total[idx - 3]].max
  end
  total[-2..-1].max
end
