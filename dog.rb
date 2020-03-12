# pg 63 Head First Ruby book

class Dog
    attr_accessor :name, :age

    def report_age
        puts "#{@name} is #{@age} years old"
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def move (destination)
        puts "#{@name} runs to the #{destination}"
    end
end

fido = Dog.new
fido.name = "Fido"
fido.age = 2
fido.report_age