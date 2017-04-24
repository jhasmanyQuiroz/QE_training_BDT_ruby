=begin
  This class is related to Hash structure
=end

class HashSample
  attr_reader :hash

  def create_hash
    puts "Please entered the Hash's size:"
    lenght = gets.chomp.to_i
    @hash = Hash.new
    lenght.times do |index|
      puts "Entered the Key and the Value for the HASH (key value)"
      input = gets.chomp
      values = input.split(" ")
      @hash.store(values[0], values[1])
    end #times
    return @hash
  end # method

  def print_keys(hash)
    puts "===> Into 'print_keys' method"
    puts "The Keys are: #{hash.keys}"
  end

  def print_values(hash)
    puts "===> Into 'print_values' method"
    puts "The Values are: #{hash.values}"
  end

  def exists_key(hash, key)
    puts "===> Into 'exists_key' method"
    if hash.has_key?(key)
      mensaje = "The '#{hash}' HASH has the '#{key}' key"
    else
      mensaje = "The '#{hash}' HASH has not the '#{key}' key"
    end
    return mensaje
  end

  def exists_value(hash, value)
    puts "===> Into 'exists_value' method"
    if hash.has_value?(value)
      mensaje = "The '#{hash}' HASH has the '#{value}' value"
    else
      mensaje = "The '#{hash}' HASH has not the '#{value}' value"
    end
    return mensaje
  end
end

# Calling the Hash class
hashSample = HashSample.new
hash = hashSample.create_hash
puts "The Hash created is: #{hashSample.hash}"
hashSample.print_keys hash
hashSample.print_values hash
puts hashSample.exists_key hash, "uno"
puts hashSample.exists_value hash, "1"
