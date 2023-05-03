def fill_the_truck(box_types, truck_size)
  sorted = box_types.sort { |a, b| b[1] <=> a[1] }
  total_units = 0
  sorted.each do |box_type|
    count = box_type[0]
    units = box_type[1]
    if truck_size >= count
      total_units += count * units
      truck_size -= count
    else
      total_units += truck_size * units
      break
    end
  end
  total_units
end

box_types = [[1, 3], [2, 2], [3, 1]]
truck_size = 4
# box_types = [[1,3],[5,5],[2,5],[4,2],[4,1],[3,1],[2,2],[1,3],[2,5],[3,2]]
# truck_size = 35
# Valuable Lesson learned: The constant doesn't matter lol
# Pay attention to constraints

def fill_the_truck(box_types, truck_size)
  units_freq = Array.new(1001, 0);
  min = box_types[0][1]
  max = min
  total_units = 0
  box_types.each do |box_type|
    count = box_type[0]
    units = box_type[1]
    units_freq[units] += count;
    min = units if units < min 
    max = units if units > max
  end

  max.downto(min) do |num|
    if units_freq[num] <= truck_size
      total_units += units_freq[num] * num
      truck_size -= units_freq[num]
    else
      total_units += truck_size * num
      break
    end
  end

  total_units
end

puts fill_the_truck(box_types, truck_size)
