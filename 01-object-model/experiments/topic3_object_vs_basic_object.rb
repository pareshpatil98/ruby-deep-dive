puts "==== BasicObject ====="

begin
    obj = BasicObject.new
    puts obj.to_s
rescue => e
    puts "Error: #{e.message}"
end

puts "===== Object ===="

obj2 = Object.new

puts obj2.to_s
puts obj2.class
puts obj2.is_a?(Object)