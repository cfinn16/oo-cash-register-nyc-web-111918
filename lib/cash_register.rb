require "pry"

class CashRegister
  attr_accessor :total, :discount, :new_items, :last_transaction

  def initialize(discount = "")
    @total = 0
    @discount = discount
    @new_items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @new_items.fill(title, @new_items.length, quantity)
    @last_transaction = price
  end

  def apply_discount
    if discount == ""
      "There is no discount to apply."
    else
      @total = @total * ((100 - @discount)*0.01)
      "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @new_items
  end

  def void_last_transaction
    @total -= @last_transaction
  end




end
