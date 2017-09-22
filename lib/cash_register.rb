# Build a class with instance methods.
# Call instance methods inside of other instance methods.
# Use instance methods to track information pertinent to an instance of a class.

class CashRegister

attr_accessor :total, :new_total, :discount

  def initialize(discount = 20) # nil could work
    @total = 0
    @new_total = new_total
    @discount = discount
  end

  def add_item(title, price, qty)
    self.total += price * qty
  end

  def apply_discount(price)

  end

  def items

  end

  def void_last_transaction

  end

end
