class Owner

  attr_accessor :name, :pets
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end 

  def self.all
    @@all
  end 

  def self.count
    @@all.size
  end 

  def self.reset_all
    @@all.clear
  end 

  def species
    @species
  end 

  def say_species
    "I am a #{@species}."
  end 

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    self.pets[:fishes] << new_fish
  end 

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    self.pets[:cats] << new_cat
  end 

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    self.pets[:dogs] << new_dog
  end 

  def walk_dogs
    self.pets[:dogs].map do |x|
      x.mood = "happy"
    end 
  end 

  def play_with_cats
    self.pets[:cats].map do |x|
      x.mood = "happy"
    end 
  end   

  def feed_fish
    self.pets[:fishes].map do |x|
      x.mood = "happy"
    end
  end 

  def sell_pets
    self.pets.map do |type, pets|
      pets.each do |x|
        x.mood = "nervous"
      end
      pets.clear
    end
  end 

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end 

end