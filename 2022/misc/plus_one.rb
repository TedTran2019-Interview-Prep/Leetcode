def plus_one(digits)
  idx_end = digits.length - 1
  idx_end.downto(0).each do |idx|
    if digits[idx] == 9
      digits[idx] = 0
      if idx.zero?
        digits.unshift(1)
        break
      end
    else # Not 9
      digits[idx] += 1
      break
    end
  end
  digits
end
