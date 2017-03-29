def single
  @single ||= Shopping.new
end

class Shopping
  def initialize()
    @items = [{ id: 1, name: "cup", price: 10, quantity: 20, discount: 0 },
              { id: 2, name: "arrow", price: 50, quantity: 10, discount: 0 },
              { id: 3, name: "plate", price: 20, quantity: 5, discount: 0 }]

    @cart = []
  end

  def show_items
    puts "Items to sell:"
    @items.each { |item| puts "#{item[:id]}. #{item[:name]}, #{item[:price]} USD, #{item[:quantity]} items available." }

    puts ""
  end

  def total(amount, item)
    amount * ( item[:price] - item[:discount] )
  end

  def set_cart
    puts "To buy an item, Insert the item No. and the amount:"
    print "Item: "
    item = gets.chomp.to_i
    print "Amount: "
    amount = gets.chomp.to_i

    @cart.push item_id: item, amount: amount
  end

  def sell
    while @cart.any?
      cart = @cart.shift
      item = @items.select{ |item| item[:id] == cart[:item_id]}.first
      puts "Cart: '#{item[:name]}' Total: #{total(cart[:amount], item)}"
      item[:quantity] = item[:quantity] - cart[:amount]
    end
  end
end


single.show_items
single.set_cart
single.set_cart
single.sell
single.show_items
single.set_cart
single.sell
single.show_items

# Should be better to use singleton for this implementation? Why?
# R. Yes, because the @items inventory is not lost between the objects instantiated
