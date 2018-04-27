require 'pry'
class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs] << name
  end

  def walk_dogs
      self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.values.flatten.each {|pet| pet.mood = "nervous"}
    self.pets.each {|pets, arrays| arrays.clear}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

end
