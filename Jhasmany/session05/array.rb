class ArraySample
  def create_array
    puts "\nMethod: Create Array!!!"
    numbers = Array.new
    puts "Please insert the lenth of Array:"
    length = gets.chomp.to_i
    for index in 0..length-1
      puts "Type the element that will added to Array:"
      number = gets.chomp
      numbers.push(number)
    end
    puts "The array created is:"
    p numbers
  end

  def operations_arrays(array=[], otherArray=[])
    puts "\nMethod: Operations with Arrays!!!"
    commons = array & otherArray
    puts "The Arrays are: #{array} - #{otherArray}"
    puts "The elements commons are:#{commons}"
    puts "The first elements are: #{array.shift} - #{otherArray.shift}"
    puts "The last elements are: #{array.pop} - #{otherArray.pop}"
  end

  def join_array(array=[], otherArray=[])
    puts "\nMethod: Join Array!!!"
    puts "The Arrays are: #{array} - #{otherArray}"
    first = array.shift
    last = otherArray.pop
    join = array + otherArray
    join.unshift(first)
    join.push(last)
    puts "The join arrays are: #{join}"
    newArray = [first, last]
  end

  def display_array(array=[])
    puts "\nMethod: Display Array!!!"
    puts "The Array returned is: #{array}"
  end
end

array = ArraySample.new
array.create_array
array.operations_arrays([1, 2, 3], [2, 3, 4])
newArray = array.join_array([1, 2, 3], [2, 3, 4])
array.display_array(newArray)
