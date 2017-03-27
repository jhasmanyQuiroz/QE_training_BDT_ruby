class Item
 attr_accessor :item_name, :quantity 

  def initialize(quantity)
    @quantity = quantity
  end
  
end

item = Item.new(150)
item.item_name = "item01"

puts item.item_name
puts item.quantity

item.quantity = 45
puts item.quantity
