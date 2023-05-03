# frozen_string_literal: true

# @param {String} s
# @return {String}
def sort_string(s)
  s = s.split('').sort
  count = Hash.new(0)
  s.each { |c| count[c] += 1 }
  res = ''
  until count.empty?
    count.each do |k, _v|
      res << k
      count[k] -= 1
      count.delete(k) if count[k].zero?
    end

    count.keys.reverse.each do |k|
      res << k
      count[k] -= 1
      count.delete(k) if count[k].zero?
    end
  end
  res
end

input = 'aaaabbbbcccc'
puts sort_string(input)
