class MyFirstClass
  def initialize
    puts "initialize"
  end

  def method1
    puts "Method 01"
  end

  def self.method2
    puts "Method 02"
  end
end


MyFirstClass.new.method1

obj = MyFirstClass.new
obj.method1

# The constructor isn't executed
MyFirstClass.method2
