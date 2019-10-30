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
    if @discount > 0
      discount = 1.0 - (discount.to_f / 100.0)
      total *= total - (total * discount)
  end
end