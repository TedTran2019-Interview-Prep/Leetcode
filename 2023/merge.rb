# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, _n)
  return nums1 if nums2.empty?

  curr = []
  nums1.each_with_index do |nbr, idx|
    curr.unshift(nums2.shift) if !nums2.empty? && (curr.empty? || nums2.first < curr.first)

    if idx < m
      if curr.first <= nbr
        nums1[idx] = curr.shift
        curr << nbr
      end
    else
      nums1[idx] = curr.shift
    end
  end
  nums1
end
