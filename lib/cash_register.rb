class CashRegister
  attr_accessor :discount, :items
  attr_reader :total
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
      @items << [title] * quantity
  end
end