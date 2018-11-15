class Lawyer
  def method_missing(method, *args)
    puts "you called: #{method} (#{args.join(',')})"
    puts "(you also passed it a block)" if block_given?
  end
end

l = Lawyer.new
l.talk('a','b') # do
  # puts "a block"
# end

