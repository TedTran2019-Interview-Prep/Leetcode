def longest_common_prefix(strs)
  prefix = ''
  idx = 0

  while (char = strs.first[idx])
    strs.each { |str| return prefix if str[idx] != char }
    prefix << char
    idx += 1
  end
  prefix
end
