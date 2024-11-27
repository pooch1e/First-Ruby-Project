#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
#
# 
# 1.variable should hold x of array which is current day. it should then compare next day to x.
# 2. If nexdt day is higher than x then dont buy, if it is lower then exchange with x - iterate through whole array doing this 
#3. once that is finished, go back and find the highest number after X which will be the sell day. following the same method but reversed to find highest int
#
# 
stock = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock)
  # Initialize variables
  current_day_price = stock[0]
  current_day_index = 0

  max_profit = 0
  sell_day = 0
  buy_day = 0

  # Iterate through the stock prices
  stock.each_with_index do |price, index|
    # Update the minimum price and the corresponding buy day
    if price < current_day_price
      current_day_price = price
      current_day_index = index
    end

    # Calculate the potential profit for selling on the current day
    potential_profit = price - current_day_price

    # Update max_profit, sell_day, and buy_day if a better profit is found
    if potential_profit > max_profit
      max_profit = potential_profit
      sell_day = index
      buy_day = current_day_index
    end
  end

  puts "The best price to buy is: #{stock[buy_day]} on day #{buy_day}"
  puts "The best day to sell is day #{sell_day} at price #{stock[sell_day]}"
  puts "The maximum profit is: #{max_profit}"
end

stock_picker(stock)
