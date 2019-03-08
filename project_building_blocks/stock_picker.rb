def stock_picker stock_prices
    
    @buy_price = nil
    @sell_price = nil
    @profit = 0

    stock_prices.each do |buy|
        index = stock_prices.index(buy)
        stock_prices.each do |sell|

            if stock_prices.index(sell) <= stock_prices.index(buy)
                next
            end

            if (sell - buy) > @profit
                @buy_price = buy
                @sell_price = sell
                @profit = sell - buy
            end
        end        
    end

    return "[#{stock_prices.index(@buy_price)}, #{stock_prices.index(@sell_price)}]"
end