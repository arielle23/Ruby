
format_input = {
    "format": "Please enter a positive number:It's #attr number, and its prime factors are #num_list.\n",
    "patterns": [
      {
        "placeholder": "#attr",
        "pattern": "string"
      },
      {
        "placeholder": "#num_list",
        "pattern": "[int]",
        "delimiter": ", ",
        "occurrence": "+"  
      }
    ]
  }
puts format_input[:patterns]
format_pattern = /Please\s*enter\s*a\s*positive\s*number:It's\s*(.*)\s*number,\s*and\s*its\s*prime\s*factors\s*are\s*([\d+.{1,3}]+\d+\s*.)\n/
string = "Please enter a positive number:It's   evsdfen number, and its prime factors are 2,3,4,5.\n"
format_pattern.match string
puts "attr: #{$1}"

puts "num_list: #{$2}"
puts string.scan format_pattern
