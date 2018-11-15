module M
  class C
    module M2
      puts Module.nesting
    end
    X = 'a constant'
  end
  puts C::X
end
puts M::C::X
