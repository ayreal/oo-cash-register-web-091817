# Build a class with instance methods.
# Call instance methods inside of other instance methods.
# Use instance methods to track information pertinent to an instance of a class.
require 'pry'

class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0

  end

  def add_item(title, price, qty=1)
    self.total += price * qty
    qty.times { self.items << title }
    self.last_transaction = qty*price
  end

  def apply_discount
    if self.discount > 0 #this is a float
      self.total *= ((100 - self.discount.to_f) / 100)
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end


  def void_last_transaction
    self.total -= self.last_transaction
  end

end
