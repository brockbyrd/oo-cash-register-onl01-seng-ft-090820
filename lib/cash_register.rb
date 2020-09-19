require 'pry'

class CashRegister
  attr_accessor :discount, :total, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    @last_transaction = nil
    @last_transction_name = nil
  end

  def add_item(item, price, quantity = 1)
    i = 0
    while i < quantity do
      @items << title
      @last_transaction = price * quantity
      @last_transction_name = title
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
    item_names = []
    @cart.each do | item_info |
      for qty in 1..item_info[:quantity]
        item_names << item_info[:name]
      end
    end
    item_names
  end

  def void_last_transaction
    items.delete(@last_transaction)
    if cart.empty?
      self.total = 0.0
    else
      self.total -= @last_transaction
    end
  end

end
