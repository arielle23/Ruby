#!/usr/bin/ruby

print "Enter birthday (YYYY-MM-DD):"
bday = gets.chop
year, month, day = bday.split('-')
seconds = Time.now - Time.local(year,month,day)
days = (seconds / 86400).round
puts "you have lived for #{days} days."
