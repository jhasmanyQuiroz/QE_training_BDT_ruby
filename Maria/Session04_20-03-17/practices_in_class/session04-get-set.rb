class Item
	#attr_reader :item_name
	#attr_writer :item_name
	attr_accessor :item_name
  def initialize(item_name, quantity)
 #   @item_name = item_name
    @quantity = quantity
  end
 end
  
#def item_name
#   @item_name
#   end
#end

item = Item.new("tv",1)
puts item.item_name = "radio"

#
