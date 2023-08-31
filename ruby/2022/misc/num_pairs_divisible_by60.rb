# @param {Integer[]} time
# @return {Integer}
def num_pairs_divisible_by60(time)
    pairs = 0
    hash = Hash.new(0)
    time.each do |seconds|
        pairs += hash[seconds % 60] if hash[seconds % 60] > 0
        
        hash[0] += 1 if (seconds % 60).zero?
        hash[60 - (seconds % 60)] += 1
    end
    pairs
end
