# @param {String} s
# @return {Integer}
  ROMAN_NUMERALS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

def roman_to_int(s)
  integer = 0
  s.each_char.with_index do |char, idx|
    if idx + 1 == s.length || ROMAN_NUMERALS[char] >= ROMAN_NUMERALS[s[idx + 1]]
      integer += ROMAN_NUMERALS[char]
    else
      integer -= ROMAN_NUMERALS[char]
    end
  end
  integer
end
