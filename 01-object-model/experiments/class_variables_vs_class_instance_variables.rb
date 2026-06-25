puts "\n===== CLASS VARIABLE @@ SHARING ====="

class A
  @@count = 0

  def self.increment
    @@count += 1
  end

  def self.value
    @@count
  end
end

class B < A
end

A.increment
B.increment

puts "A: #{A.value}"
puts "B: #{B.value}"

puts "\n===== CLASS INSTANCE VARIABLE @ ====="

class X
  @count = 0

  def self.increment
    @count ||= 0
    @count += 1
  end

  def self.value
    @count
  end
end

class Y < X
end

X.increment
Y.increment

puts "X: #{X.value}"
puts "Y: #{Y.value}"

puts "\n===== INHERITANCE TRAP ====="

class Parent
  @@data = "parent"
end

class Child < Parent
  @@data = "child"
end

class GrandChild < Parent
  puts @@data
end

puts "\n===== CLASS INSTANCE VARIABLES CHECK ====="

class Test
  @value = 10
end

p Test.instance_variables