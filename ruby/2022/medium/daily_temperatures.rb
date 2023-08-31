# O(N) Monotonic Stack problem
# Strictly increasing temp = same/decreasing monotonic stack
def daily_temperatures(temperatures)
  answer = Array.new(temperatures.length, 0)
  stack = []
  temperatures.each_with_index do |temp, idx|
    while !stack.empty? && temp > stack.last[0]
      _t, i = stack.pop
      answer[i] = idx - i
    end
    stack << [temp, idx]
  end
  answer
end
