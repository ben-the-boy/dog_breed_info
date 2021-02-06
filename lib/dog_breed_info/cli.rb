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
    puts "Please select a breed to get more information or type 'exit' to exit."
    input = gets.strip
    if input == "exit"
      puts "Goodbye."
      exit
    end 
    if valid_input?(input)
      selected_breed = DogBreedInfo::Breed.all[input.to_i - 1]
      puts "Key features of the #{selected_breed.name} breed:"
      puts "Group: #{selected_breed.group}"
      puts "Height: #{selected_breed.height}"
      puts "Weight: #{selected_breed.weight}"
      puts "Lifespan: #{selected_breed.lifespan}"
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
      exit
    else 
      puts "Invalid input."
      view_another_breed
    end 
  end 
    
  def valid_input?(input)
    input.to_i.between?(1,DogBreedInfo::Breed.all.length)
  end 

  
end 