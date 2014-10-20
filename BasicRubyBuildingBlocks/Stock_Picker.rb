def stock_picker(arr_prices)
	buy_on_day = 0
	sell_on_day = 0
	profit_made = []
	days_list = []

	while buy_on_day < arr_prices.size do 
			sell_on_day = buy_on_day

			while sell_on_day < arr_prices.size do
					profitorloss = arr_prices[sell_on_day].to_i - arr_prices[buy_on_day].to_i 
					profit_made << profitorloss
					days_list << "#{buy_on_day},#{sell_on_day}"
					sell_on_day+=1
			end
			buy_on_day += 1
	end

	max_profit = profit_made.index(profit_made.max)
	optimal_days = days_list[max_profit]

	total_profit = profit_made.max

	puts "Maximum profit that can be made is #{total_profit}"
	puts "Buying and selling day should be [#{optimal_days}] respectively"

end

stocks = [99,125,153,625,179,999,123,11425,3233] 
puts stock_picker(stocks) 

