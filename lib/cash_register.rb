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
    last_transaction
  end
  
  def apply_discount
    if discount > 0
      self.total *= (100.0 - discount.to_f)/100
      return "After the discount, the total comes to $#{total.to_i}"
    else
      return "There is no discount to apply."
  end
  
  def void_last_transaction()
    self.total -= @last_transaction_amount
  end
end