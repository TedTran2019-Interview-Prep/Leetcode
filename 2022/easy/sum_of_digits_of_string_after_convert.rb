def get_lucky(s, k)
  count = {}
  ('a'..'z').each_with_index { |letter, idx| count[letter] = (idx + 1).to_s }
  s = convert_to_int(s, count)
  k.times { s = transform(s) }
  s.to_i
end

def convert_to_int(s, count)
  new_str = ''
  s.each_char { |char| new_str << count[char] }
  new_str
end

def transform(s)
  sum = 0
  s.each_char { |char| sum += char.to_i }
  sum.to_s
end
