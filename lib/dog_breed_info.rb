require_relative "./dog_breed_info/version"
require_relative "./dog_breed_info/cli"
require_relative "./dog_breed_info/breed"
require_relative "./dog_breed_info/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'

module DogBreedInfo
  class Error < StandardError; end
  # Your code goes here...
end
