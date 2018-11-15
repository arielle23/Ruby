#!/usr/bin/ruby
# def to_alphanumeric(s)
    # s.gsub(/[^\w\s]/,'')
# end
class String
    def to_alphanumeric
        gsub(/[^\w\s]/,'')
    end
end

# def replace(array, original, replacement)
    # array.map{ |e| e == original ?  replacement : e}
# end

class Array
    def replace(original,replacement)
        self.map{ |e| e == original ? replacement : e }
    end
end

class MyClass
    def my_method
        @v  = 1
    end
end

obj = MyClass.new
obj.my_method
puts obj.instance_variables
puts obj.methods

require 'test/unit'

# class ReplaceTest < Test::Unit::TestCase
    # def test_replace
        # original = ['one','two','one','three']
        # replaced = original.replace('one', 'zero')
        # assert_equal ['zero','two','zero','three'], replaced
    # end
    # def test_replace2
        # original = ['1','2','3','4']
        # replaced = original.replace('2','0')
        # assert_equal ['1','0','3','4'], replaced
    # end
# end
# # class ToAlphanumericTest < Test::Unit::TestCase
    # def test_strip_non_alphanumeric_characters
        # assert_equal '3 the Magic number', '#3, the *Magic, number*?*'.to_alphanumeric
    # end
# end
