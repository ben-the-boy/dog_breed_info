class DogBreedInfo::Breed 
  attr_accessor :name, :group, :height, :weight, :lifespan 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save 
  end
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
end 