# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  highest_profit = 0
  lowest_price = prices.first
  prices.each do |price|
    profit = price - lowest_price
    highest_profit = profit if profit > highest_profit
    lowest_price = price if price < lowest_price
  end
  highest_profit
end
