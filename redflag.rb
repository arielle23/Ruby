lambda {
@setups = []
@events = []

Kernel.send :define_method, :setup do |&block|
  @setups << block
end

Kernel.send :define_method, :event do |description,&block|
  @events << {:description => description, :condition => block}
end

Kernel.send :define_method, :each_event do |&block|
  events.each do |event|
    block.call event
  end
end

}.call

load 'events.rb'

@events.each do |event|
  @setups.each do |setup|
    setup.call
  end
  puts "Alert: #{event[:description]}" if event[:condition].call
end
