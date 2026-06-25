puts "\n===== Example 1: Top Level Constant ====="

MY_NAME = "Paresh"

class Dog
  puts MY_NAME
end


puts "\n===== Example 2: Lexical Scope ====="

module Animal
  MY_NAME = "Animal"

  class Cat
    puts MY_NAME
  end
end


puts "\n===== Example 3: Inheritance vs Lexical Scope ====="

MY_VALUE = "Global"

class Parent
  MY_VALUE = "Parent"
end

class Child < Parent
  puts MY_VALUE
end


puts "\n===== Example 4: Explicit Constant Lookup ====="

class Child
end

puts Child::MY_VALUE


puts "\n===== Example 5: Nested Constants ====="

VALUE = "Global"

module A
  VALUE = "A"

  class Dog
    VALUE = "Dog"

    puts VALUE
  end
end