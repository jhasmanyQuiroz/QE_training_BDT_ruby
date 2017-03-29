class Shopping
	$item_n = "item"
	$total_price = 0
	$quantity = 0
	def initialize
		@amount_items = 0
		@items_price ={
			'glasses' => 75,
			'bottleWater' => 30,
			'paper' => 10,
			'bag' => 100,
			'noteBook' => 23
		}
		@items_quantity ={
			'glasses' => 10,
			'bottleWater' => 41,
			'paper' => 2,
			'bag' => 7,
			'noteBook' => 18
		}
		@items_discount ={
			'glasses' => 0,
			'bottleWater' => 0,
			'paper' => 0,
			'bag' => 0,
			'noteBook' => 0
		}

	end

	def buy_item
		begin
			puts "Enter item name"
			$item = gets.chomp
		end while !(@items_price.has_key? ($item))
		begin
			puts "Enter quantity of item"
			$quantity = gets.chomp.to_i
		end while (@items_quantity[$item] < $quantity)

		@items_quantity[$item] -= $quantity
	end

	def calculate_total
		$total_price = (@items_price[$item] * $quantity) - @items_discount[$item]
		puts "The total amount is #{$total_price}"
	end
end


p = Shopping.new
p.buy_item
p.calculate_total
