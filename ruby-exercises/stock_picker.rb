def stock_picker(stock_prices)
  buy_date = 0
  sell_date = 0
  max_profit = 0
  i = 0
  while i < stock_prices.size do
    j = i + 1
    while j < stock_prices.size do
      if stock_prices[j] - stock_prices[i] > max_profit
        buy_date = i
        sell_date = j
        max_profit = stock_prices[j] - stock_prices[i]
        puts "#{stock_prices[sell_date]} - #{stock_prices[buy_date]} = #{max_profit}"
      end
      j += 1
    end
    i += 1
  end
  puts "#{stock_prices[sell_date]} - #{stock_prices[buy_date]} = #{max_profit}"
end

stock_picker([12,45,99,145,23,99,200,54,87,34,53])
