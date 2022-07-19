# @param {String} s
# @return {Integer}
def number_of_ways(s)
  dict = Hash.new(0)
  count = 0
  s.each_char do |c|
    dict[c] += 1
    if c == '0'
      dict['10'] += dict['1'] if dict['1'] > 0
      count += dict['01'] if dict['01'] > 0
    else
      dict['01'] += dict['0'] if dict['0'] > 0
      count += dict['10'] if dict['10'] > 0
    end
  end
  count 
end
