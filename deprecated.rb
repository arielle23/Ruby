class Book
  def lend_to(user)
    puts "Lending to #{user}"
  end
  def self.deprecate(old_method,new_method)
    define_method(old_method) do |*args,&block|
      puts *args
      warn "Warning: #{old_method}() is deprecated, Use #{new_method}()."
      send(new_method,*args,&block)
    end
  end
  deprecate :LEND_TO, :lend_to
end

b = Book.new
b.LEND_TO("Bill")
