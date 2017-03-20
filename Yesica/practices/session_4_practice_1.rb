class Item

	# attr_reader :item_name, :quantity
	# attr_writer :item_name
	attr_accessor :item_name
	attr_reader :quantity

	def initialize(quantity)
		@quantity = quantity
	end

	# def initialize(item_name, quantity)
	# 	@item_name = item_name
	# 	@quantity = quantity
	# end

=begin
	def item_name
		@item_name
	end
=end
end

# item = Item.new("tv", 1)
item = Item.new(1)
item.item_name="radio"
puts "Item name: #{item.item_name}"
puts "Quantity: #{item.quantity}"