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
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

def items
    @items
end

def void_last_transaction
    cart.delete(@last_transaction)
    if cart.empty?
      self.total = 0.0
    else
      self.total -= @last_transaction
    end
  end

end
