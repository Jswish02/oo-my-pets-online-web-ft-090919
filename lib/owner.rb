class Owner
  attr_accessor :name, :species
  @@all = []
  
  def initialize(name)
    @species = "human"
    @name = name 
    @@all << self
  end 
  def self.all 
    @@all
  end
  def say_species
    "I am a #{self.species}."
  end
  def self.count
    self.all.count
  end 
  def self.reset_all
    self.all.clear 
  end
  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy"}
  end
def feed_cats 
  self.cats.each {|cat| cat.mood = "happy"}
 end 
 def buy_cat(name) 
   Cat.new(name, self)
 end
 def buy_dog
   Dog.new(name, self)
 end 
 def sell_pets
 end
  
