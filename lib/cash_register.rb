require 'pry'

class CashRegister

    attr_accessor :discount, :total, :item_array
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @itemarray = [ ]
        @last_price = 0 
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        quantity.times do 
            @itemarray << title
        end 
        @total += (price * quantity)
        @last_price = (price * quantity)
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else 
            @total = @total - ((@discount * @total) / 100)
            "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @itemarray
    end

    def void_last_transaction
        @total -= @last_price
    end
end
