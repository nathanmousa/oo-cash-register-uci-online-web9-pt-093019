class CashRegister
  attr_accessor :total, :discount
  attr_reader :items
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
  
  def apply_discount
    if @discount
  end
end