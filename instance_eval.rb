class MyClass
  attr_accessor :a
  @@b = 1
  def initialize
    @v = 2
  end
  def print_value
    puts @v
    puts "over"
  end
  def self.b
    @@b
  end
end

obj = MyClass.new
obj.print_value
obj.a= 12
puts obj.a
puts MyClass.b
obj.instance_eval do
  puts self
  puts @v
end

