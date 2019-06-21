require 'rest-client'
require_relative './answer'
require_relative './scraper.rb'
require_relative './quiz.rb'
require'pry'
require_relative '../config/environment'


class API




    def self.definition(word)
    x = RestClient.get("https://www.dictionaryapi.com/api/v3/references/collegiate/json/#{word}?key=9f01a881-4830-49a9-8849-c27cba983820")
    y = JSON.parse(x)
    return y[0]["shortdef"][0]
    end
    definition("practical")

end
