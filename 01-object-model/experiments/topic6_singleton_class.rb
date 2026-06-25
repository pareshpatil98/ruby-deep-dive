class Dog
    class << self
        def run
        puts "Running"
        end
    end

    def self.bark
        puts "Woof"
    end
end

dog1 = Dog.new
dog2 = Dog.new
Dog.bark
def dog1.speak
    puts "bark"
end
puts dog1.speak
puts dog2.respond_to?(:speak)
puts dog1.singleton_class
Dog.run
p Dog.singleton_methods