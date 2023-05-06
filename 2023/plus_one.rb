# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    remainder = 1
    (digits.length - 1).downto(0).each do |i|
      digits[i] += remainder
      remainder = digits[i] / 10
      digits[i] = digits[i] % 10
    end
    digits.unshift(remainder) unless remainder.zero?
    digits
end

# How I did it last year
def plus_one(digits)
  idx_end = digits.length - 1
  idx_end.downto(0).each do |idx|
    if digits[idx] == 9
      digits[idx] = 0
      if idx.zero?
        digits.unshift(1)
        break
      end
    else
      digits[idx] += 1
      break
    end
  end
  digits
end
