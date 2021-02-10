class DogBreedInfo::CLI 
  
  def call
    get_breed_info
    list_breeds
    get_user_input
    view_another_breed
  end 
  
  def get_breed_info
    DogBreedInfo::Breed.load_featured_breeds
    DogBreedInfo::Breed.all.each do |breed|
      DogBreedInfo::Breed.load_selected_breed(breed)
    end 
  end 
  
  def list_breeds
    puts "\nCurrently Featured Dog Breeds:".green 
    DogBreedInfo::Breed.all.each.with_index(1) do |breed, index|
      puts "#{index}. #{breed.name}"
    end 
  end
  
  def get_user_input
    puts "\nPlease select a breed number to get more information or type 'exit' to exit."
    input = gets.strip.downcase
    if input == "exit"
      puts "\nGoodbye.".green
      exit
    end 
    if valid_input?(input)
      selected_breed = DogBreedInfo::Breed.all[input.to_i - 1]
      puts "\nKey features of the #{selected_breed.name} breed:".green 
      puts ["Group: #{selected_breed.group}", "Height: #{selected_breed.height}", "Weight: #{selected_breed.weight}", "Life Span: #{selected_breed.lifespan}"]
    else 
      puts "\nInvalid input, please enter a listed number.".red 
      list_breeds
      get_user_input
    end
  end 
    
  def view_another_breed
    puts "\nTo view another breed, type 'new breed' or type 'exit' to exit."
    input = gets.strip.downcase 
    if input == "new breed"
      self.call 
      elsif input == "exit"
      puts "\nGoodbye.".green
      exit
    else 
      puts "\nInvalid input.".red 
      view_another_breed
    end 
  end 
    
  def valid_input?(input)
    input.to_i.between?(1,DogBreedInfo::Breed.all.length)
  end 

  
end 