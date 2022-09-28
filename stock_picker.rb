# implement a method stock_picker that takes in an array of stock prices, one for each day
# it should return a pair of days representing the best day to buy and the best day to sell. days start at 0
# Tips:
# need to buy before you sell
# pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.


def stock_picker(array)
    highest_profit = 0
    best_days = []
    current_result = array.each_with_index do |price, idx|
        array.each_with_index do |price2, idx2|
            if (idx2 <= idx)
                profit = nil
            else
                profit = (price2 - price)
            end
            unless profit == nil
                if profit > highest_profit
                    highest_profit = profit
                    best_days = [idx, idx2]
                end
            end
        end
    end
    puts "#{best_days}"
end

stock_picker([9, 18, 3, 5, 2, 9, 10, 12, 7])