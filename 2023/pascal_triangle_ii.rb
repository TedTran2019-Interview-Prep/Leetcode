# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  return [1] if row_index == 0

  pascal = [[1]]
  row_index.times do
    new_triangle = []
    l = -1
    r = 0
    while l < pascal.last.length
      left = l.negative? ? 0 : pascal.last[l]
      right = r >= pascal.last.length ? 0 : pascal.last[r]
      new_triangle << (left + right)
      l += 1
      r += 1
    end
    pascal << new_triangle
  end
  pascal.last
end
