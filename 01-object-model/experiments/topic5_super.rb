class Animal
    def speak(sound)
        puts sound
    end

    def eat(food)
        puts food
    end

    def sleep(hour)
        puts("8 hours")
        puts hour
    end
end

class Dog < Animal
    def speak(sound)
        puts sound
        super("Bark.....")
    end
end

class Cat < Animal
    def eat(food)
        puts("fish")
        super
    end
end

class Horse < Animal

    def sleep(hour)
        puts hour
        super()
    end
end


Dog.new.speak("bark")
Cat.new.eat("fish")
Horse.new.sleep("6 hours")