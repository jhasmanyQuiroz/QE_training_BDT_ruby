#Reviewing some operators

stringA = "0.1"
numberA = 0.1
puts "is equal '0.1' and 0.1 "
puts "0.1" .eql? 0.1
puts stringA.eql? numberA
puts "========="
c = 10
d = 10
e = d
puts "comparing objects???"
puts e.equal?10
puts "========="
c += numberA + 456
puts c
puts "0.1" == 0.1

puts (1...5)===4