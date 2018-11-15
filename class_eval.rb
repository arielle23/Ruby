def add_method_to(a_class)
  a_class.class_eval do
    def m
      puts "hello"
    end
  end
end

add_method_to(String)
"sdfwe".m

class A
  @@v = 1
  def method_a(&block)
    @a = 2
    puts "method_a a: #{@a} v: #{@@v}"
    puts self
    block.call
  end
  def method_b
    @b = 3
    @@v = 2
    puts "method_b a: #{@a} b: #{@b} v: #{@@v}"
  end
end

a = A.new
a.method_a do
  puts self
  # puts @a 
  # self: main
end

class B
  def method_a
    @a1 = 4
    puts "method_a a:#{@a1}"
  end
  def method_b
    @a2 = 5
    puts "method_b b:#{@a2}" 
  end
end

a.instance_eval do
  @a = 3
  def method_d
    puts "method_d" #this will be set in main(Object)
  end
end

# puts Object.instance_methods

a.method_d #don't exist

a.method_b

A.class_eval do
  def method_c
    puts "method_c"
  end
end

a.method_c
