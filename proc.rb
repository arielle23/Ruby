dec = lambda {|x| x + 1}
puts dec. call(2)

def math(a, b)
  yield(a,b)
end

def do_math(a,b,&operation)
  math(a,b,&operation)
end

puts do_math(2,3) {|x,y| x * y} 

class MyClass
  def my_method
    puts "this is method"
  end
end

a = MyClass.new
m = a.method :my_method
m.call
