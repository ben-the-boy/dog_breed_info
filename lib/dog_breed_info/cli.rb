class DogBreedInfo::CLI 
  
  def call 
    list_breeds
    get_user_input
    view_another_breed
  end 
  
  def list_breeds
    puts "Currently Featured Dog Breeds:"
    DogBreedInfo::Breed.new("Doberman")
    DogBreedInfo::Breed.new("Poodle")
    DogBreedInfo::Breed.all.each.with_index(1) do |breed, index|
      puts "#{index}. #{breed.name}"
    end 
  end
  
  def get_user_input
    puts "Please select a breed to get more information:"
    input = gets.strip
    if valid_input?(input)
      if input == "1"
        puts "More info on 1"
        elsif input == "2"
        puts "More info on 2"
        elsif input == "3"
        puts "More info on 3"
      end
    else 
      puts "Invalid input, please enter a listed number."
      list_breeds
      get_user_input
    end
  end 
    
  def view_another_breed
    puts "To view another breed, type 'new breed' or type 'exit' to exit."
    input = gets.strip 
    if input == "new breed"
      self.call 
      elsif input == "exit"
      puts "Goodbye." 
    else 
      puts "Invalid input."
      view_another_breed
    end 
  end 
    
  def valid_input?(input)
    input.to_i.between?(1,DogBreedInfo::Breed.all.length)
  end 

  
end 