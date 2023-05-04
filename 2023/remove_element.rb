# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  k = 0
  nums.each do |num|
    if num != val
      nums[k] = num
      k += 1
    end
  end
  k
end
