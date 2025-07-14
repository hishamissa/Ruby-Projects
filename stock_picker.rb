# # TheOdinProject Project 3: Stock Picker 
#
# Takes an input array of numbers which represents the prices of one stock over the course of a week/x number of days. 
# Returns the ideal day to both buy, then sell this stock in order to get the maximum amount of profit. Days start at 0. 
# Just like in the real-world, you need to buy before you can sell. 
# Output is formatted as [index of day to buy, index of day to sell]
#
# Hisham Issa, July 14, 2025

def stock_picker(week)
	# Initialize variables to 0 to begin
	max_profit = 0 # The ideal max profit you can get from the current stock prices
	ideal_days = [0, 0] # The best DAYS to buy and sell: [buy, sell]
	lowest_price = week[0] # The lowest price of the stock in that week
	low_index = 0 # The day of the week that the price is lowest

	# Loop over the week of stock prices from start to finish
	week.each_with_index do |price, index|
		current_profit = week[index] - lowest_price # Set the current profit to be current day we are on minus the lowest price found so far

		# If the current profit is higher than our best profit so far
		if current_profit > max_profit
			ideal_days[1] = index # Set the sell date to the the current index
			max_profit = current_profit # Update the best profit found so far
			ideal_days[0] = low_index # Set the buy date to the lowest price found thus far
		end

		# Check if the current price we're looking at is lower than our current lowest price (starts at 0 by default)
		# This section ONLY handles updating the current lowest price we've seen
		if week[index] < lowest_price
			# If so update the current lowest price to match. Then store the index of that current lowest price
			lowest_price = week[index] 
			low_index = index
		end
	end

	print ideal_days
end

# Optional interactive-ness.
puts "Stock Picker!\nInput the stock prices that will appear for the next week (seperated by commas or spaces):"
week = gets.chomp.split(" ") # Put the numbers into an array
week.map! {|price| price.to_i} # Ensure they are all stored as actual numbers for safety

stock_picker(week)