# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] unless num_rows.positive?
  return [[1]] if num_rows == 1

  pascal = [[1]]
  (num_rows - 1).times do
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
  pascal
end
