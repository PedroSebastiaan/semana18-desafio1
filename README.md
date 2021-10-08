Example

class Animal < ApplicationController
    # ...
    def create
    # ...
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
