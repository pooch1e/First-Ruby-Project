#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
#
# 
# variable should hold x of array which is current day. it should then compare next day to x. If nexdt day is higher than x then dont buy, if it is lower then exchange with x - iterate through whole array doing this 
# once that is finished, go back and find the highest number after X which will be the sell day. following the same method but reversed to find highest int
#
# 
stock = [17,3,6,9,15,8,6,1,10]
def stock_picker(stck)
  # index of best stock to go in these arrays?
  day_to_buy = stck.to_a
  day_to_sell = stck.to_a

  worst_day = day_to_sell.min
  best_day = day_to_buy.max
  p "the best day was #{best_day} and the worst day was #{worst_day}"

end
stock_picker(stock)