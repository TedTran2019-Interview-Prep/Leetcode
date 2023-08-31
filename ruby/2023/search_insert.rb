# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  low = 0
  high = nums.length - 1

  while low <= high
    half = (low + high) / 2
    case
    when nums[half] == target
      return half
    when nums[half] < target
      low = half + 1
    when nums[half] > target
      high = half - 1
    end
  end
  low
end
