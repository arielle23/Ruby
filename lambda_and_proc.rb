#!/usr/bin/ruby

def call_lambda
    puts "call lambda"
    a = lambda {
        puts "before lambda return"
        return "lambda return"
        puts "after lambda return"
    }
    puts a.call
    puts "finished call lambda"
end

def call_proc
    puts "call proc"
    b = Proc.new {
        puts "before proc return "
        return "proc return"
        puts "after proc return"
    }
    puts b.call
    puts "finished call proc"
end

call_lambda
call_proc
