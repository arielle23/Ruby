module MyModule
  def my_method
    puts "my_method s:#{@s} "
  end
end

class MyClass
  def initialize(value)
    @@v = value
    @s = value
  end
  def self.v
    @@v
  end
end

unbound = MyModule.instance_method(:my_method)
# s = MyClass.new(23)
# puts MyClass.v
# a = unbound.bind(s)
# puts a.class
# a.call

String.send :define_method, :another_method, unbound
"abc".another_method
