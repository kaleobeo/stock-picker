def stock_picker(prices)
  day_pair = [0, 0]
  prices.each_with_index do |sell_price, sell_index|
    prices[0...sell_index].each_with_index do |buy_price, buy_index|
      this_profit = sell_price - buy_price
      current_best = prices[day_pair[1]] - prices[day_pair[0]]
      if (this_profit) > (current_best)
        day_pair[0] = prices[0...sell_index].index(buy_price)
        day_pair[1] = sell_index
      end
    end
  end
  day_pair
end

stock_picker([1, 3, 7, 4, 6])