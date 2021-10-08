Example

class Animal < ApplicationController
    def create
        kind = params[:animal][:kind]
        if kind == "Dog":
            animal = Dog.new(animal_params)
        elsif kind == "Cat"
            animal = Cat.new(animal_params)
        else
            animal = Cow.new(animal_params)
        end
    end
end

The correct way to create a correct polymorphic class must be:

1) Create a principal model 

class Animal 
    def create
        raise NotImplementedError, Animal.create
    end
end

1) Create the heirs models

require_relative 'Animal'

class Dog < Animal
    def create
        Dog.new
end

class Cat < Animal
    def create
        Cat.new
    end
end

class Cow < Animal
    def create
        Cow.new
    end
end

