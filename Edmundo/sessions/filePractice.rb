# path = "C:\\tools\\"

puts "filename: "
fileName = gets.chomp
# filePath = path + fileName
filePath = fileName

# File.exist?(filename) 

file = File.new(filePath, "w+")

puts "how many lines"
amount = gets.chomp.to_i

amount.times do 
  line = gets
  file.write(line)
end

file.close


newfile = File.open(filePath, "r").read

p newfile

newfile = File.open(filePath, "a") { |f|
  f.puts "hola mundo"
}

# newfile  do |line|
#   puts line
# end

