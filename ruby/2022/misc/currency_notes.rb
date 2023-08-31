NOTES = [2000, 500, 200, 100, 50, 20, 10, 5, 1].freeze
def currency_notes(amount)
  notes = Hash.new(0)
  NOTES.each do |val|
    while amount >= val
      amount -= val
      notes[val] += 1
    end
  end
  puts notes
end

currency_notes(800)
currency_notes(2456)
