module Printable
  def print
    puts "print in Printable"
  end

  def prepare_cover
    puts "prepare_cover in Printable"
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
    puts self
  end

  def format_for_screen
    puts "format_for_screen in Document"
  end
  
  def print
    puts "print in Document"
  end
end

class Book
  include Document
  include Printable
end

b = Book.new
b.print_to_screen
