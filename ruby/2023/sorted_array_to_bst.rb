# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  helper(nums, 0, nums.length - 1)
end

def helper(nums, l, r)
  return nil if l > r

  m = (l + r) / 2
  root = TreeNode.new(nums[m])
  root.left = helper(nums, l, m - 1)
  root.right = helper(nums, m + 1, r)

  root
end
