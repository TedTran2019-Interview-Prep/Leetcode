# Just a simple BFS
def min_depth(root)
  return 0 if root.nil?

  queue = [root]
  depth = 1
  children = []
  until queue.empty?
    parent = queue.shift
    return depth if parent.right.nil? && parent.left.nil?

    children << parent.left if parent.left
    children << parent.right if parent.right
    next unless queue.empty?

    queue = children
    children = []
    depth += 1
  end
end
