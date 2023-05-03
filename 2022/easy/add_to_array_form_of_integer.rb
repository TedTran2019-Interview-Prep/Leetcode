def add_to_array_form(num, k)
  sum = num.reduce(0) { |accu, nbr| (accu * 10) + nbr } + k
  sum_array = []
  until sum.zero?
    sum_array.unshift(sum % 10)
    sum /= 10
  end
  sum_array
end
