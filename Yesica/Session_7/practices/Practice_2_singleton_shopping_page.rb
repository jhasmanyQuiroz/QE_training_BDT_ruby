=begin
Ruby Singleton: Practice 2 - Slide 6 - Shopping page
Yesica Acha	
=end

class Shopping

	attr_accessor :items_per_invoice
	attr_reader :total_price, :items_to_buy, :item_quantity
	
	def initialize

		@items_to_buy = 0
		@total_price = 0
		@item_price = {
			shirt: 5.59,
			skirt: 10.34,
			pants: 11.99
		}

		@item_quantity = {
			shirt: 50,
			skirt: 30,
			pants: 60
		}

		@item_disccount = {
			shirt: 0.0,
			skirt: 0.0,
			pants: 0.0
		}
	end

	def buy_item
		puts "What item would you like to buy?"
		item = gets.chomp.to_sym
		puts "How many #{item}(s) would you like to buy?"
		quantity = gets.chomp.to_i

		@items_per_invoice[item] = quantity
		@items_to_buy += quantity
		@item_quantity[item] = @item_quantity[item] - quantity
	end

	def calculate_total_price(item, quantity)
		
		# Calculate the total price per item
		total_price_per_item = @item_price[item] * quantity

		# Calculate the total price of the purchase order
		@total_price += total_price_per_item
		return total_price_per_item
	end
end
	
def singletn_example
	@singletn_example ||= Shopping.new
end

# Print details of the invoice
def print_inovice
	puts "\n----------------------------------"
	puts "| Item  | Quantity | Total Price |"
	puts "----------------------------------"
	singletn_example.items_per_invoice.each do |item, quantity|
		puts "| #{item} |     #{quantity}    |    #{singletn_example.calculate_total_price(item, quantity)}    |"
		end
	puts "----------------------------------"
	puts "\nYou bought #{singletn_example.items_to_buy} items, and the total price is #{singletn_example.total_price}"
end

# Print balance
def print_balance
	puts "This is the remain quantity of items"
	puts "\n--------------------"
	puts "| Item  |  Quantity |"
	puts "---------------------"
	singletn_example.item_quantity.each do |item, quantity|
		puts "| #{item} |     #{quantity}    |"
		end
	puts "---------------------"
end

# Buy items
def buy_items
	singletn_example.items_per_invoice = Hash.new
	keep_buying = "Y"
	
	begin
		singletn_example.buy_item
		print "Would you like to buy another item?......"
		keep_buying = gets.chomp 
	end while (keep_buying =~ /^y(es)?$/i)
	print_inovice

	print "Would you like to see the remain quantity?....."
	 if gets.chomp =~ /^y(es)?$/i; print_balance end
end

buy_items