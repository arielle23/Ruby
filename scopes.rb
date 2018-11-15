class MyClass
  attr_accessor :variable
  def initialize
    if defined?(@@v2)
      @@v2 += 1
    else
      @@v2 = 1
    end
  end
  def my_method
    @v3 = 2
    puts "my_method #{local_variables} #{@v3} #{@@v2} #{@variable}"
  end
  def my_method2
    @v4 = @v3
    puts "method2 : #{@v4}"
  end
  def self.v2
    @@v2
  end
  def after
    puts @variable
  end
end

obj = MyClass.new
obj.variable = "hello"
obj.my_method
obj.my_method2
a = MyClass.new
a.variable = "a"
a.my_method
a.my_method2
puts obj.variable
obj.after
puts "top #{local_variables}#{MyClass.v2}" 
