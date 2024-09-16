def stock_picker(stock_prices_array)
  #compare all stocks to determine best buy sell date

  #assume buy and sell on day one for zeor profit
  buy_day = 0
  sell_day = 0
  profit = 0

  stock_prices_array.each_with_index do |stock_price, current_day|
    #first loop iterates over each day in the list

    #create an array of all remaining days
    remaining_days = stock_prices_array.slice(current_day, stock_prices_array.size - current_day)
    p remaining_days

    remaining_days.each_with_index do |future_price, future_day|
      #second loop iterates over remaining days
      potential_profit = future_price - stock_price

      #if potential is greater than current max profit, update values
      if potential_profit > profit 
        buy_day = current_day
        sell_day = future_day + current_day 
        profit = potential_profit
      end
      
    end
  end
  #return two days
  return [buy_day, sell_day]
end

def get_prices(prices)
  #take an array of prices and add a user input string to it

  #prompt user
  puts "Enter new price: ('!' to end)"
  #take in user input
  new_price = gets.chomp
  #check for end
  return if new_price === "!"
  #push new price to array
  prices.push(new_price.to_i)
  #call func again
  get_prices(prices)
end

prices = []
get_prices(prices)
p prices
puts "The best day to [buy, sell] is #{stock_picker(prices)}"