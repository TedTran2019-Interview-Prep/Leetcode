# @param {String[]} words
# @param {String} target
# @param {Integer} start_index
# @return {Integer}
def closet_target(words, target, start_index)
  distance = 0
  min = nil
  while distance < words.length
    if words[start_index % words.length] == target
      test_distance = [distance, words.length - distance].min
      min = test_distance if min.nil? || test_distance < min
    end
    distance += 1
    start_index += 1
  end
  min || -1
end
