class Animal
end

class Dog < Animal
end

class Labrador < Dog
end

puts Labrador.superclass
puts Dog.superclass
puts Animal.superclass
puts Object.superclass
puts BasicObject.superclass.inspect