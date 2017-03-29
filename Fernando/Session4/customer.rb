def customer_id(name, c_id)
  puts("Hi #{name.upcase}.")
  print("You are our customer #{c_id} ")
  c_id >= 100 ? print("Thanks to be our customer!!!") : print("Thanks!!!")
end


customer_id("Fernando", 200)
puts "       "
customer_id "Ariel", 5