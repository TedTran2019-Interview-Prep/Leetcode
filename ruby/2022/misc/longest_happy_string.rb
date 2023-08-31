def longest_diverse_string(a, b, c)
  dict = {
    'a' => a,
    'b' => b,
    'c' => c
  }
  window = ''
  while can_push_any?(dict, window)
    highest = dict.max_by { |k, v| v }[0]

    2.times do
      break if dict[highest].zero? || !can_push?(dict, window, highest)

      window << highest
      dict[highest] -= 1
    end

    dict.each do |k, v|
      next if k == highest

      if v.positive?
        window << k
        dict[k] -= 1
        break
      end
    end
  end

  window
end

def can_push_any?(dict, window)
  return true if window.length < 2

  dict.each do |k, v|
    return true if v.positive? && !(window[-1] == window[-2] && window[-2] == k)
  end
  false
end

def can_push?(dict, window, char)
  return true if window.length < 2
  return true if dict[char].positive? && !(window[-1] == window[-2] && window[-2] == char)

  false
end

# puts longest_diverse_string(4 ,4, 3).length == "aabbccaabbc".length