# require 'singleton'
def sing_ex
  @a = @a || Base.new
end

class Base
  # @@value = 0
  # include Singleton

  def initialize
    @value = 0
  end

  def any
    @value = 10    
  end

  def some
    @value
  end

end


p sing_ex.any
p sing_ex.object_id
p sing_ex.some
p sing_ex.object_id

p Base.new.object_id
p Base.new.some

# b1 = Base.instance
# p b1.any

# b2 = Base.instance
# p b2.some

# b1 = Base.new
# p b1.any

# b2 = Base.new
# p b2.some