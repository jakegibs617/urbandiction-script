# require 'HTTParty'
# require 'Nokogiri'
require 'JSON'
require 'pry'
require 'csv'
require 'rest-client'

puts "input word to read definition:"
word = gets
url = "http://api.urbandictionary.com/v0/define?term=#{word}"

page = RestClient.get url, {accept: :json}

parse_page = JSON.parse(page)
definition = parse_page["list"][0]["definition"]


def_array = []
total = parse_page["list"].length

for x in 0...total
	def_array << "#{x + 1}: " + parse_page["list"][x]["definition"]
end

for x in 0...total
	puts def_array[x]
	sleep 2
	puts " "
	puts " --"
	puts " "
end

