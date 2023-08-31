ROMAN_NUMERALS = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000
}.freeze

def roman_to_int(s)
  total = 0
  s.each_char.with_index do |char, idx|
    if idx == s.length - 1
      total += ROMAN_NUMERALS[char]
    else
      curr = ROMAN_NUMERALS[s[idx]]
      future = ROMAN_NUMERALS[s[idx + 1]]
      curr < future ? total -= curr : total += curr
    end
  end
  total
end
