class DogBreedInfo::CLI 
  
  def call 
    list_breeds
    get_user_input
    # show_breed_info
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
    
  end 
  
  def show_breed_info
    
  end 
  
end 