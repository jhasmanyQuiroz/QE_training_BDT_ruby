class Item
#attr_reader :item_name,:quantity
#attr_writer :item_name,:quantity
attr_accessor :item_name,:quantity
  def initialize(quantity)
    @item_name = "default"
    @quantity = quantity
  end

  #def item_name
  #  @item_name
  #end
end

item = Item.new(1)
puts item.item_name
puts item.quantity
item.item_name =  "radio"
item.quantity = 2
puts item.item_name
puts item.quantity
