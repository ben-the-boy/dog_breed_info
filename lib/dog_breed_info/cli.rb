class DogBreedInfo::CLI 
  
  def call 
    list_breeds
    get_user_input
    # valid_input?(input)
    # display_breeds (with loop?)
    goodbye 
  end 
  
  def list_breeds
    puts "Currently Featured Dog Breeds:"
    puts "1. Golden Retriever"
    puts "2. Labrador Retriever"
    puts "3. Australian Shepherd"
  end
  
  def get_user_input
    puts "Please select a breed to get more information:"
    input = gets.strip
    if input == "1"
      puts "More info on 1"
      elsif input == "2"
      puts "More info on 2"
      elsif input == "3"
      puts "More info on 3"
    end
    puts "To view another breed type 'view new' or type 'exit' to exit."
    input_2 = gets.strip
    if input_2 == "view new"
      list_breeds
      get_user_input
    end 
  end 
  
  def goodbye 
    puts "We hope you learned a lot! Goodbye!"
  end 
  
end 