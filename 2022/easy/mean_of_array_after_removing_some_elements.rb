# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
  arr.sort!
  half = arr.length / 20
  half.times do
    arr.shift
    arr.pop
  end
  arr.sum.fdiv(arr.length)
end
