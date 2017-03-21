=begin
Write 1 Method called customer_id
1. This Methods
2. should receive 2 arguments : name and customer_id
3. Using short-if expression evaluate the id value according :
  - Only if ID is greater than 100 print the message “Thanks to be our customer”
    otherwise only print “Thanks”
  - change to uppercase the name
4. Print the text, e.g. :
   Hi <name_in_uppercase>
   Your are our cutomer <ID> <message_according_id>
In the same ruby file create the call to this function :
a) Using parenthesis  sending some data
b) Not using parenthesis sending another data
=end

def customer_id(name,customerId)
  print "Hi #{name.upcase}\nYour are our cutomer #{customerId}" +
        " #{customerId > 100 ? "Thanks to be our customer" : "Thanks"}\n"
end

customer_id("Miguel",101)
customer_id("Angel",100)
customer_id "Felipe",102
customer_id "Antonio",98
