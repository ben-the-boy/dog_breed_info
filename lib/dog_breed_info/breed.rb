class DogBreedInfo::Breed 
  attr_accessor :name, :group, :height, :weight, :lifespan 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save 
  end
  
  def save
    @@all << self unless @@all.detect {|breed| breed.name == self.name}
  end 
  
  def self.all
    @@all 
  end 
  
end 