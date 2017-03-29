=begin
Create a method that is going to :
1. ask for a filename and extension  .E.g test.txt
2. Then you will delete all the content of the file (in case that already exist)
3. Then ask for the user for the amount of lines to be added
4. According the amount of lines, ask for each line.
5. Close the file
6. Finally print the values of the file (also be sure that file is created in
   your current directory)
7.  Change the mode of the file in order to add ay new line to tehe xisting
    file. Run the script and push the code and the result
=end

puts "Write Content"
print "Enter File Name and Extension: "
fileName = gets.chomp

file = File.open(fileName, 'w+')
file.truncate(0)

print "Enter the quantity of lines to add: "
lines = gets.chomp.to_i

lines.times do |i|
  print "#{i}: "
  content = gets
  file.write(content)
end

file.close

puts "Print Content"
file = File.new(fileName, "r")
counter = 0
while (line = file.gets)
        puts "#{counter}: #{line}"
        counter = counter + 1
end
file.close

puts "Add Content"
file = File.open(fileName, 'a')
print "Enter the quantity of lines to add: "
lines = gets.chomp.to_i

lines.times do |i|
  print "#{i}: "
  content = gets
  file.write(content)
end
file.close

puts "Print Content"
file = File.new(fileName, "r")
counter = 0
while (line = file.gets)
        puts "#{counter}: #{line}"
        counter = counter + 1
end
file.close
