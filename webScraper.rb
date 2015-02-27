require 'mechanize'
require 'nokogiri'
require 'open-uri'
#not being used 
mech = Mechanize.new
#sets of a page to be parse. doc is the name
doc = Nokogiri::HTML(open("http://news.osu.edu/news/"))
#this puts the title(text) that is in h4 tags
doc.xpath('//h4').each do |title|
	puts title.text
end

