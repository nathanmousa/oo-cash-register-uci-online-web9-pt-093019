class CashRegister
  attr_accessor :discount
  attr_reader :total, :items
  ALL = []
  @@all = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      items << title
  end
end