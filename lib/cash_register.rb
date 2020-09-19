require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    items_info = {}
    items_info[:name] = item
    items_info[:price] = price
    items_info[:quantity] = quantity

    @cart << items_info
    @total += price * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end

  end

  def items
    items_names = []
    @cart.each do |items_info|
      for qty in 1...items_info[:quantity]
        items_names << items_info[:name]
      end
    end
    items_names
  end

  def void_last_transaction

  end




end
end
