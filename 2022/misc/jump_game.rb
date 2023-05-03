# Take whatever is highest on your way to the end
def can_jump(nums)
  return true if nums.length == 1

  hops = nums.first
  idx = 0
  while hops.positive?
    hops -= 1
    idx += 1
    return true if idx == nums.length - 1

    hops = (hops > nums[idx] ? hops : nums[idx])
  end
  false
end

# Recursion with Memo solution times out
# def can_jump(nums)
#   jump(nums, 0, {})
# end

# def jump(nums, idx, memo)
#   return true if nums.length - 1 == idx
#   return false if idx >= nums.length
#   return memo[idx] unless memo[idx].nil?

#   nums[idx].downto(1) do |hop|
#     test_idx = idx + hop
#     next if test_idx >= nums.length

#     memo[test_idx] = jump(nums, test_idx, memo) if memo[test_idx].nil?
#     return memo[test_idx] if memo[test_idx]
#   end
#   false
# end
