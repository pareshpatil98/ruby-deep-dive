p "=======USER======="

class User
    attr_accessor :name
end

a = User.new
a.name = "Paresh"
p a.name
p a.instance_variables

p "==========EMPLOYEE=============="

class Employee

    define_method(:name) do 
        @name
    end

    define_method(:name=) do |value|
        @name = value
    end
end

b = Employee.new
b.name = "Shekhar"
p b.name 
p b.instance_variables


p "==========STUDENT============"


class Student

    def name
        @name
    end

    def name=(value)
        @name = value
    end
end

c = Student.new
c.name = "Shyam"
p c.name
p c.instance_variables