# -1 if invalid 
# Still has to be in order
# r, o, a is with any croak matching
# Amount of free frogs = frogs - queue.length
# Fails speed test!
# def min_number_of_frogs(croak_of_frogs)
#   frogs = 0
#   queue = []
#   croak_of_frogs.each_char do |char|
#     case char
#     when 'c'
#       frogs += 1 unless (frogs - queue.length).positive?
#       queue << 'c'
#     when 'r'
#       return -1 if queue.empty?
#       match = any_croak_matches?(queue, 'c')
#       return -1 if match == -1

#       queue[match] << 'r'
#     when 'o'
#       return -1 if queue.empty?
#       match = any_croak_matches?(queue, 'r')
#       return -1 if match == -1

#       queue[match] << 'o'
#     when 'a'
#       return -1 if queue.empty?
#       match = any_croak_matches?(queue, 'o')
#       return -1 if match == -1

#       queue[match] << 'a'
#     when 'k'
#       return -1 if queue.empty?
#       return -1 unless queue[0][-1] == 'a'

#       queue.shift
#     else
#       return -1
#     end
#   end
#   return -1 unless queue.empty?
#   frogs
# end

# def any_croak_matches?(queue, match)
#   queue.each_with_index do |queue, i|
#     return i if queue[-1] == match
#   end
#   -1
# end

# State machine solution
def min_number_of_frogs(croak_of_frogs)
  states = Hash.new(0)
  ongoing_machines = 0
  croak_of_frogs.each_char do |char|
    case char
    when 'c'
      states['c'] += 1
    when 'r'
      return -1 unless states['c'].positive?

      states['c'] -= 1
      states['r'] += 1
    when 'o'
      return -1 unless states['r'].positive?

      states['r'] -= 1
      states['o'] += 1
    when 'a'
      return -1 unless states['o'].positive?

      states['o'] -= 1
      states['a'] += 1
    when 'k'
      return -1 unless states['a'].positive?

      states['a'] -= 1
      states['k'] += 1
    else
      return -1
    end
    ongoing_machines = [ongoing_machines, ['c', 'r', 'o', 'a'].sum { |char| states[char] }].max
  end
  states['k'] = 0
  return -1 unless states.values.all?(&:zero?)

  ongoing_machines
end

puts min_number_of_frogs('croakcroak')
puts min_number_of_frogs('crcoakroak')
puts min_number_of_frogs('aaoocrrackk')
puts min_number_of_frogs('crocracokrakoak')
puts min_number_of_frogs("crocakcroraoakk")
# cro -> a -> k
# cr -> o  -> ak
# c -> r -> oak
