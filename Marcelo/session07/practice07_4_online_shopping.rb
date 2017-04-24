=begin
Ruby Singleton
=end

def singletn_example
	@singletn_example ||= OnlineShopping.new
end
class OnlineShopping
	attr_reader :bought_items

	def initialize
		@bought_items = Array.new
		@options = Array.new
		@items = {
			"ball"=> { 
				"price" => 10,
				"quantity" => 10,
				"discount" => 0 
				},
			"gloves" => { 
				"price" => 20,
				"quantity" => 20,
				"discount" => 0 
				},
			"helmet"=> { 
				"price" => 50,
				"quantity" => 0,
				"discount" => 0 
				}
			}
		@items_balance = Hash.new
		@items.each do |key, value|
			@items_balance.store key, 0
		end
	end
	def buy_item item, quantity
		puts "SELECTED - item: #{item}: quantity: #{quantity}"

		if quantity > 0 then
			@items[item]["quantity"] -= quantity
			@bought_items.push([item, "#{@items[item]["price"] * quantity} $"])
			@items_balance[item] += quantity
		else
			puts "Buying #{@items[item]["quantity"]} quantity was not registered!"
		end
		show_items
		the_item, availability = ask_item
		the_quantity = ask_quantity availability
		buy_item the_item, the_quantity
	end
	def show_items
		numeral = 0
		puts "LIST OF ITEMS\n============="

		@items.each do |key, value|
			puts "#{numeral+=1} - #{key}"
			@options.push(key)
		end
	end
	def ask_item
		puts "Please select an option to buy (* to show the items, / to quit):"
		item_index = gets.chomp
		if item_index.to_i > 0 && item_index.to_i <= @items.length then
			 puts @options[item_index.to_i - 1]
			return @options[item_index.to_i - 1], @items[@options[item_index.to_i - 1]]["quantity"]
		elsif item_index === "*" then
			show_items
			ask_item
		elsif item_index == "/" then
			print_bought_items
			print_balance
			exit
		else
			ask_item
		end
	end
	def ask_quantity item_availability
		puts "Please enter the quantity (Max: #{item_availability}):"
		quantity = gets.chomp.to_i
		if item_availability == 0 then
			0
		elsif quantity > 0 && quantity <= item_availability then
			quantity
		else
			ask_quantity item_availability
		end
	end
	def print_bought_items
		puts "LIST OF SALES: "
		@bought_items.each do |key, value|
			puts "\t -Item: #{key}, earnings #{value}"
		end
	end
	def print_balance
		puts "BALANCE: "
		@items_balance.each do |key, value|
			print "\t -Item: #{key}, quantity sold: #{value}, earnings: #{value * @items[key]["price"]} $,"
			puts " available items: #{@items[key]["quantity"]}"
		end
	end
end

singletn_example.show_items
the_item, availability = singletn_example.ask_item
the_quantity = singletn_example.ask_quantity availability
singletn_example.buy_item the_item, the_quantity
singletn_example.print_bought_items
singletn_example.print_balance


# QUESTION: Should be better to use singleton for this implementation? Why?

# I think yes, because as online shopping all the user should see dynamically the changes in the products/items, in that way they will be up to date to select what to buy and the amount available.

