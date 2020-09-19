require 'pry'

class CashRegister

  attr_accessor :total

  def initialize
    @total = 0
    apply_discount
  end

  def add_item(title, price)

    @total + price
  end

  def apply_discount

  end

  def items

  end

  def void_last_transaction

  end




end
