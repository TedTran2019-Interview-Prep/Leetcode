# frozen_string_literal: true

def chalk_replacer(chalk, k)
  sum = chalk.sum
  amount = k / sum
  other_amount = sum * amount
  new_k = k - other_amount
  chalk_replacer_action(chalk, new_k)
end

def chalk_replacer_action(chalk, k)
  i = 0

  while k >= chalk[i]
    k -= chalk[i]
    i += 1
    i %= chalk.length
  end
  i
end

chalk = [5, 1, 5]
k = 22
puts chalk_replacer(chalk, k)

chalk2 = [3, 4, 1, 2]
k2 = 25
puts chalk_replacer(chalk2, k2)
