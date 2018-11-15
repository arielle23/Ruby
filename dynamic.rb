class MyClass
  define_method :my_method do |my_arg1, my_arg2|
    puts my_arg1 + my_arg2 * 3
  end
end

obj = MyClass.new
puts obj.my_method(3,7)
# puts obj.send(:my_method, 7)

