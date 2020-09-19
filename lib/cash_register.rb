require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize
    @total = total
    @discount = 20
  end

  def total
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @total = @price * quantity + @total
  end

  def apply_discount
    @discount = discount
    if @discount != 0
      @total = @price * @quantity - @discount
      return "After the discount, the total comes to $#{total}."
      return "There is no discount to apply."
    end
  end

  end

  def items

  end

  def void_last_transaction

  end




end
