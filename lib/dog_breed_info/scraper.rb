class DogBreedInfo::Scraper
  
  def self.scrape_featured_breeds
    doc = Nokogiri::HTML(open("https://dogtime.com/dog-breeds"))
    featured_breeds = doc.css("div.featured-breed-text-container")
    breed_names = featured_breeds.css("a.featured-breed-list-item-title").text
    featured_breeds.each do |breed|
      name = breed.css("a.featured-breed-list-item-title").text
      new_breed = DogBreedInfo::Breed.new(name)
      new_breed.url = breed.css("a.featured-breed-list-item-title").attribute("href").value 
    end 
  end
  
  def self.scrape_key_info # (breed)
    breed = DogBreedInfo::Breed.new("xoloitzuintli")
    doc = Nokogiri::HTML(open("https://dogtime.com/dog-breeds/xoloitzuintli"))
    key_info = doc.css("div.vital-stat-box")
    breed.group = key_info[0].text
    breed.height = key_info[1].text
    breed.weight = key_info[2].text
    breed.lifespan = key_info[3].text
    breed 
  end 
  
end 