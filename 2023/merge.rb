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

def merge(nums1, m, nums2, n)
  return nums1 if n.zero?

  k = (n + m) - 1
  n -= 1
  m -= 1
  highest = nil

  until n.negative?
    if m.negative? || nums2[n] >= nums1[m]
      highest = nums2[n]
      n -= 1
    else
      highest = nums1[m]
      m -= 1
    end

    nums1[k] = highest
    k -= 1
  end

  nums1
end
