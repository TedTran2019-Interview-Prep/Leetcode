# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  k = 0
  idx = 1
  while idx < nums.length
    if nums[idx] > nums[k]
      nums[k + 1] = nums[idx]
      k += 1
    end

    idx += 1
  end
  k + 1
end

def remove_duplicates(nums)
  k = 0
  nums.each do |num|
    if num > nums[k]
      nums[k + 1] = num
      k += 1
    end
  end
  k + 1
end
