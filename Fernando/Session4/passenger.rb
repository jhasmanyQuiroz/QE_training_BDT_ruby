
def main()
  puts "***** Please insert a name *****"
  name= gets.chomp 

  puts "***** Insert a destination *****"	
  $destination= gets.chomp 

  puts "***** Please insert price of the ticket *****"
  price = gets.chomp.to_i 

  priceD = passenger(price, $destination)
  puts "Good morning #{name}, the destination is #{$destination} and the price of the ticket is #{priceD}" 

end

def passenger(price, dest="CBBA")
    $destination = dest
	priceD = (6.81 / price).to_f 
end


main()