def stock_picker(stock_prices_array)
  #compare all stocks to determine bets buy sell date
  buy_day = 0
  sell_day = 0
  profit = 0


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