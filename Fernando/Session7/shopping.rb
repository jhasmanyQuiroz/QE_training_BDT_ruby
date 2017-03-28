class Shopping
	def initialize
		addedToCart = 0
        itemsWithPrice = Hash.new
        itemsWithQuantity = Hash.new
        discountByItem = Hash.new
	end

	def buyItem(item, quantity)
       
       itemsWithQuantity -= 1
	end

	def calculatePrice(item, quantity)
   
	end	
end

items = {
           "Headphones" => [2,]
           "Monitor" => []
           "Keyboard" => []
           "Books" => []
           "Magazines" => []
        }