def max_sub_array(nums)
  curr_sum = 0
  max_sum = nums.first
  nums.each do |nbr|
    if curr_sum > -1
      curr_sum += nbr
    else
      curr_sum = nbr
    end
    max_sum = curr_sum if curr_sum > max_sum
  end
  max_sum
end