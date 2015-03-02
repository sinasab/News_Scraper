require 'mechanize'
require 'nokogiri'
require 'open-uri'
require 'launchy'
require 'rubygems'
require_relative './intro'
require_relative './grabTitles'
require_relative './grabLinks'
require_relative './grabDates'
require_relative './htmlHeader'
require_relative './writeLinkTags'
require_relative './htmlCloser'

#not being used 
mech = Mechanize.new
#sets of a page to be parse. doc is the name
doc = Nokogiri::HTML(open("http://news.osu.edu/news/"))
#create a file to write html code to
file = File.open("webpage.html", 'w')

htmlHeader(file)
writeLinkTags(doc,file)
htmlCloser(file)





################## USED FOR TESTING##########################
## arrTitle = Array.new
# this puts the title(text) that is in h4 tags
# in an arry.  Current has extras, need to remove
# or come up with a Better way to find the titles.

# def grabTitles(doc)
# 	doc.xpath('//h4').each do |title|
# 		arrTitle << title
# 	end
# end



# =begin
# This grabs the links following the tags. Then place into an array.
# =end
# def grabLinks(doc)
# 	links = doc.xpath('//h4/a/@href')
# 	arrLinks = Array.new links.to_a
# end

# =begin
# This loop dispays the print the titles of the articles along
# with the link the story.
# =end
# for i in 0..arrTitle.size do
# 	print "Title: "+ arrTitle[i].to_s
# 	print "\n"
# 	print "Link: "
# 	print "www.news.osu.edu/"+arrLinks[i].to_s
# 	print"\n\n"
# end

#links.to_a.each {|x| puts"www.news.osu.edu/"+ x}

=begin
Just another way I was trying to get
puts links2=doc.css('div.post a')
=end


