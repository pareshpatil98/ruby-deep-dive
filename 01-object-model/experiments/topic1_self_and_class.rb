puts self

class Animal
    puts self 
    def speak
        puts self
    end

    def self.sound
        puts self
    end
end

a = Animal.new
a.speak
Animal.sound

## a.speak prints the Animal instance because speak is an instance method, and inside an instance method self refers to the receiver of the method call.

## Animal.sound prints Animal because sound is a class method and the receiver of the call is the Animal class object.