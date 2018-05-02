class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, pets|
      pets.each { |pet| pet.mood = "nervous" }
      pets.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
