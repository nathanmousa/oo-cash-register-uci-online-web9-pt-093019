class CashRegister
  attr_accessor :total, :discount
  ALL = []
  @@all = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity)
    @total += title
  end
end