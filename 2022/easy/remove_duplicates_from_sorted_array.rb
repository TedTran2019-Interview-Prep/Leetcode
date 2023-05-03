def remove_duplicates(nums)
  tail = 1
  nums.each_with_index do |num, i|
    next if i.zero?

    if num != nums[i - 1]
      nums[tail] = num
      tail += 1
    end
  end
  tail
end
