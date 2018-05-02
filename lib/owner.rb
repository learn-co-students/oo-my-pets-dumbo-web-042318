class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@owner = []


    def initialize(species)
      @species = species
      @pets = {fishes: [], cats: [], dogs: []}
      @@owner << self

    end

    def say_species
      #can say its species
      "I am a human."
    end

    def buy_fish(name)
      # can buy a fish that is an instance of the Fish class
      # knows about its fishes
      pets[:fishes] << Fish.new(name)


    end

    def buy_cat(name)
      # can buy a cat that is an instance of the Cat class (FAILED - 9)
      # knows about its cats (FAILED - 10)
      pets[:cats] << Cat.new(name)
    end

    def buy_dog(name)
      # can buy a dog that is an instance of the Dog class (FAILED - 11)
      # knows about its dogs (FAILED - 12
      pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
      # walks the dogs which makes the dogs' moods happy
      pets[:dogs].each do  |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      #plays with the cats which makes the cats moods happy
      pets[:cats].each do  |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      pets[:fishes].each do  |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      # can sell all its pets, which make them nervous
      pets.each do |key, animals|
        animals.each do |animal|
          animal.mood = "nervous"
        end
      end
      pets.clear
    end

    def list_pets
      "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
    end

    def self.all
      @@owner
    end

    def self.count
      @@owner.length
    end

    def self.reset_all
      @@owner = []
    end

end
