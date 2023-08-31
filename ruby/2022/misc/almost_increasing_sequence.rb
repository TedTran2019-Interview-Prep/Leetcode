def solution(sequence)
  return true if sequence.length == 1

  arr = []
  removal = 0
  until sequence.empty?
    prev_nbr = arr.last
    curr_nbr = sequence.shift

    if prev_nbr.nil? || curr_nbr > prev_nbr
      arr << curr_nbr
    else
      removal += 1
      return false if removal == 2

      if arr.length == 1 || curr_nbr > arr[-2]
        arr.pop
        arr << curr_nbr
      end
    end
  end
  true
end
