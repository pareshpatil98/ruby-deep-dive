puts "\n===== Example 1: include ====="

module M
  def hello
    puts "Hello from Module M"
  end
end

class A
  include M
end

A.new.hello
p A.ancestors


puts "\n===== Example 2: prepend ====="

module P
  def hello
    puts "Hello from Module P"
  end
end

class B
  prepend P

  def hello
    puts "Hello from Class B"
  end
end

B.new.hello
p B.ancestors


puts "\n===== Example 3: super with prepend ====="

module Logging
  def process
    puts "Start Logging"
    super
    puts "End Logging"
  end
end

class Service
  prepend Logging

  def process
    puts "Processing Request"
  end
end

Service.new.process


puts "\n===== Example 4: Object Ancestors ====="

p Object.ancestors


puts "\n===== Example 5: Complex Ancestor Chain ====="

module M1
end

module M2
end

class Parent
end

class Child < Parent
  include M1
  prepend M2
end

p Child.ancestors