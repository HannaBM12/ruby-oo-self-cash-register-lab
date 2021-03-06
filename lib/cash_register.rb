require 'pry'

class CashRegister
    attr_accessor :total, :discount

    def initialize(total = 0, discount = 20)
        @total = total
        @discount = discount
        @item = []
    end

    def add_item(item, price, quantity = 1)
        @total += price * quantity
        @item << item
        @total
    end

    def apply_discount
        if @discount >0
            @total = @total * (1- @discount/100.00).to_i
            puts "After the discount, the total comes to $800." 
        else
            puts "There is no discount to apply."
        end

    end



end























# require 'pry'
# class CashRegister
#     attr_reader :discount, :item
#     attr_accessor :total
#     def initialize(discount = 0)
#         @total = 0
#         @discount = discount
#         @item = []
#         @price = []
#         # binding.pry
#     end

#     def add_item(title, price, quantity = 1)
#         # binding.pry
#         @total += price * quantity
#         quantity.times do
#             item << title
#         end
#         @last_transaction = [price, quantity]
#     end

#     def apply_discount
#         if @discount > 0
#             @total = (@total * (1 - @discount/100.0)).to_i
#             binding.pry
#             return "After the discount, the total comes to $#{@total}."
#         else
#             return "There is no discount to apply."
#         end
#     end

#     def items
#         @item
#     end

#     def void_last_transaction
#         @total -= @last_transaction[0]*@last_transaction[1]
#         # binding.pry
#     end

# end
