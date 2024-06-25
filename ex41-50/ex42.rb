# Animal is-an object
class Animal

    def get_hungry
        puts "I'm hungry!"
    end

end

# Dog is-an Animal
class Dog < Animal

    def initialize(name)
        # Dog has-a name
        @name = name
    end

    def woof
        puts 'Woof! Woof!'
    end
end

# Cat is-an Animal
class Cat < Animal

    def initialize(name)
        # Cat has-a name
        @name = name
    end

    def meow
        puts 'Meeeoooow!'
    end
end

# Person is-an object
class Person
    attr_accessor :pet

    def initialize(name)
        # Person has-a name
        @name = name
        # Person has-a pet
        @pet = nil
    end
end

# Employee is-a Person
class Employee < Person

    def initialize(name, salary)
        # Employee has-a name(from Person)
        super(name)
        # Employee has-a salary
        @salary = salary
    end
end

# Fish is-an object
class Fish; end

# Salmon is-a Fish
class Salmon < Fish; end

# Halibut is-a Fish
class Halibut < Fish; end

# Rover is-a Dog
rover = Dog.new('Rover')

# Satan is-a Cat
satan = Cat.new('Satan')

# Mary is-a Person
mary = Person.new('Mary')

# Satan is-a pet of mary
mary.pet = satan

# frank is-an Employee
frank = Employee.new('Frank', 120000)

# Rover is-a pet of frank
frank.pet = rover

# flipper is-a Fish
flipper = Fish.new

# crouse is-a Salmon
crouse = Salmon.new

# harry is-a Halibut
harry = Halibut.new