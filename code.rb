# require 'HTTParty'
# require 'Nokogiri'
require 'JSON'
require 'pry'
require 'csv'
require 'rest-client'

puts "input word to read definition"
word = gets
url = "http://api.urbandictionary.com/v0/define?term=#{word}"

page = RestClient.get url, {accept: :json}

parse_page = JSON.parse(page)
definition = parse_page["list"][0]["definition"]


def_array = []
total = parse_page["list"].length

for x in 0...total
	def_array << parse_page["list"][x]["definition"]
end

puts def_array

# Pry.start(binding)