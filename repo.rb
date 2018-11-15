require 'ghee'

gh = Ghee.basic_auth("arielle23","dq19970912")
# puts gh.class
repo = gh.users("ChillingHsu").repos
puts repo[0]
# puts all_gists.to_s.gsub(',',"\n").gsub('=>',": ")
