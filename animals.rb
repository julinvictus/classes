# Book Head First Ruby pg. 49

class Human
  def initialize(name)
    @humanName = name
  end

  attr_accessor :humanName, :pet

  def valid?
    puts @humanName
    !@humanName.nil?
  end
  # add an instance of carnivore here
  def adopt(pet)
    @pet = Carnivore.new (pet)
    adopt_msg = "#{@humanName} adopted #{@pet.name}"
    puts adopt_msg
    adopt_msg
  end

  def feeding 
    if @pet.is_hungry?
      puts "#{@humanName} fed #{@pet.name}"
      @pet.hungry = false
      #@pet.pet_hungry == false # breaks the app
    else
      puts "#{@humanName} didn't feed #{@pet.name} cause #{@pet.name} is not hungry"
      @pet.hungry = true
    end
  end
end
# where @hungry belongs? pet is the one thats hungry or not 
# after feeding, animal should stop being hungry 

class Carnivore
  # def name=(new_value)
  #   @name = new_value
  # end
  # attr_writer :name
  # def name
  #   @name
  # end
  # attr_reader :name
  attr_accessor :name
  attr_writer :hungry

  def initialize (name)
    @name = name
    @hungry = true
  end

  def valid?
    # return true when name is not nil
    !@name.nil?
  end
  def number_of_paws
    "#{@name} has 4 paws"
  end
  def behavior
    "#{@name} is a pack member"
  end
  def talk
    animal_talk = "#{@name} says woof"
    puts animal_talk
    animal_talk
  end

  def is_hungry?
    puts "#{@name} is hungry :#{@hungry}"
    return @hungry
  end
end

class Felidae < Carnivore
  def behavior
    puts "#{@name} is a solitary hunter"
  end
end

class Canidae < Carnivore
end

class Dog < Canidae
end

class Wolf < Canidae
  def talk
    puts "#{@name} says howl"
  end
end

class Leopard < Felidae
  def talk
    puts "#{@name} says roar"
  end
end

class Cat < Felidae
  def talk
    puts "#{@name} says meow"
  end
end

# tobi = Dog.new ("Tobi")
# tobi.number_of_paws
# tobi.behavior
# tobi.talk
# tobi.pet_hungry
# puts "-----------"
# will = Wolf.new
# will.name = "Will"
# will.number_of_paws
# will.behavior
# will.talk
# puts "-----------"
# sunset = Leopard.new
# sunset.name = "Sunset"
# sunset.number_of_paws
# sunset.behavior
# sunset.talk
# puts "-----------"
# lala = Cat.new ("Lala")
# lala.number_of_paws
# lala.behavior
# lala.talk
# puts "-----------"
# zak = Human.new ('Zak')
# # zak adopts a cat
# zak.adopt('Lala')
# # zak feeds a cat
# zak.feeding
# puts "-----------"
juliana = Human.new('Juliana')
# juliana adopts a dog
juliana.adopt('Tobi')
# # juliana feeds a dog
juliana.feeding
juliana.feeding
puts "-----------"