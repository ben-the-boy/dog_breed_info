class DogBreedInfo::Scraper
  
  def self.scrape_featured_breeds
    doc = Nokogiri::HTML(open("https://dogtime.com/dog-breeds"))
    featured_breeds = doc.css("div.featured-breed-text-container")
    breed_names = featured_breeds.css("a.featured-breed-list-item-title").text
    featured_breeds.each do |breed|
      name = breed.css("a.featured-breed-list-item-title").text
      DogBreedInfo::Breed.new(name)
    end 
    binding.pry 
  end 
  
end 