require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

page = HTTParty.get('http://www.urbandictionary.com/define.php?term=lite')
parse_page = Nokogiri::HTML(page)

Pry.start(binding)