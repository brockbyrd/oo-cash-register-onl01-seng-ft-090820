require 'pry'

class CashRegister
  attr_accessor :discount, :total, :last_transaction, :cart


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info

    @total += price * quantity

  end

  def apply_discount
    self.total += amount * quantity
    quantity.times do
      items << total
    end
    self.last_transaction = amount * quantity
  end

  def items
    item_names = []
    @cart.each do | item_info |
      #test expects product name * quantity...
      for qty in 1..item_info[:quantity]
        item_names << item_info[:name]
      end
    end
    item_names
  end

  def void_last_transaction
    if
      return @total = 0
    end
  end

end
