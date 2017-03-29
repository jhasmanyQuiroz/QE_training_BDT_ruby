=begin
Lets’ assume you are a user for a user for an online shopping page (like amazon)
1. Create a class considering :
   1. Initial  amount of items to buy are 0
   2. Initial list of items with the specific price for each one
   3. Initial list of items with the quantity of each one
   4. Initial discount for each item as 0
   5. Create a method to buy an item(ask for the item and for the amount,
      after an item is buy, you should decrease the quantity from the list
      of items)
   6. Create a method to calculated the price according the item/quatity selected
Outside the class call to the methods in order to perform the actions :
   1. define which items/quntity will be buy
   2. Print the ist of items and the price calculated for each one
   3. Print the balance of each item
2. Answer the question :
   1. Should be better to use singleton for this implementation? Why?
=end
require 'singleton'
class Store
  include Singleton
  def initialize
    @amountItemToBuy = 0
    @items={
      "item1" => [10.5, 100, 0],
      "item2" => [20.5, 200, 0],
      "item3" => [30.5, 300, 0],
      "item4" => [40.5, 400, 0]
    }
    @itemCar={}
  end
  def displayItem item
    puts 'Item:'
    puts "name: #{item}"
    puts "price: #{@items[item][0]}"
    puts "quantity: #{@items[item][1]}"
    puts "discount: #{@items[item][2]}"
  end
  def buyItem item,quantity=1
    @items[item][1] -= quantity
  end
  def calculatePrice item,quantity=1
    puts "Price: #{item}"
    puts "quantity: #{quantity}"
    puts "price: #{@items[item][0] * quantity}"
  end
  def AddCar item, quantity
    @itemCar[item] = [@items[item][1]*quantity,quantity]
    puts "\nAdd Car: #{item} with quantity: #{quantity}"
  end
  def printCar
    puts "\nCar"
    puts "Item\tPrice\tQuantity"
    if @itemCar.length == 0
      puts "No Items Added"
    else
      @itemCar.each { |key,value| puts "#{key}\t#{value[0]}\t#{value[1]}"}
      @itemCar.each { |key,value| @amountItemToBuy += value[0]}
      puts "Total Amount: #{@amountItemToBuy}"
    end
  end
  def printBalance
    puts "\nBalance"
    puts "Item\tPrice\tQuantity\tdiscount"
    @items.each { |key,value| puts "#{key}\t#{value[0]}\t#{value[1]}\t\t#{value[2]}"}
  end
  def buy
    @itemCar.each do |key,value|
      buyItem key,value[1]
    end
    @itemCar.clear
    @amountItemToBuy=0
  end
end

Store.instance.printBalance
Store.instance.printCar
Store.instance.AddCar 'item1',2
Store.instance.AddCar 'item2',3
Store.instance.AddCar 'item4',5
Store.instance.printCar
Store.instance.buy
Store.instance.printBalance
Store.instance.printCar
Store.instance.AddCar 'item2',10
Store.instance.AddCar 'item3',15
Store.instance.AddCar 'item4',1
Store.instance.printCar
Store.instance.buy
Store.instance.printBalance
