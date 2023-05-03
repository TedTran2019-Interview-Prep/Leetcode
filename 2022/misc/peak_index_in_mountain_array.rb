def peak_index_in_mountain_array(arr)
  idx_start = 0
  idx_end = arr.length - 1
  
  while idx_start <= idx_end
    mid = (idx_start + idx_end) / 2
    if arr[mid] > arr[mid - 1] && arr[mid] > arr[mid + 1]
      return mid
    elsif arr[mid] > arr[mid - 1]
      idx_start = mid + 1
    else
      idx_end = mid
    end
  end

  nil
end


arr1 = [0,1,0]
arr2 = [0,2,1,0]
arr3 = [0,10,5,2]
puts peak_index_in_mountain_array(arr1)
puts peak_index_in_mountain_array(arr2)
puts peak_index_in_mountain_array(arr3)
