require 'pry'
class CashRegister
    attr_accessor :discount, :total, :title, :price
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        # binding.pry
    end

    def add_item(title, price, quantity = 1)
        # binding.pry
        @total += price * quantity

    end
    def apply_discount
        @total = @total * (1- @discount/100)
        # binding.pry
    end

end
