class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    self.all.length
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def dogs
    pets[:dogs]
  end

  def cats
    pets[:cats]
  end

  def fishes
    pets[:fishes]
  end

  def buy_fish(name)
    fishes << Fish.new(name)
  end

  def buy_cat(name)
    cats << Cat.new(name)
  end

  def buy_dog(name)
    dogs << Dog.new(name)
  end

  def walk_dogs
    dogs.each { |dog|
      dog.mood = "happy"
    }
  end

  def play_with_cats
    cats.each { |cat|
      cat.mood = "happy"
    }
  end

  def feed_fish
    fishes.each { |fish|
      fish.mood = "happy"
    }
  end

  def sell_pets
    pets.each { |pet_type, pets|
      pets.each { |pet|
        pet.mood = "nervous"
      }
    }
    pets.clear
  end

  def list_pets
    "I have #{fishes.count} fish, #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end
