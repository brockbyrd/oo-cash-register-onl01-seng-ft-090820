require 'pry'

class CashRegister
  attr_accessor :discount, :total, :last_transaction, :cart


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    @last_transaction = nil
    @last_transaction_name = nil
  end

  def add_item(item, price, quantity = 1)
    i = 0
      while i < quantity do
        @cart << item
        @last_transaction = price * quantity
        @last_transaction_name = item
        i += 1
      end
        self.total += price * quantity
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
    @cart
  end

  def void_last_transaction
    cart.delete(@last_transaction_name)
      if cart.empty?
        self.total = 0.0
      else
        self.total -= @last_transaction
      end
    end

end
