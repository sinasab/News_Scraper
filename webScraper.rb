require 'mechanize'
require 'nokogiri'
require 'open-uri'
require 'launchy'
require 'rubygems'

#not being used 
mech = Mechanize.new
#sets of a page to be parse. doc is the name
doc = Nokogiri::HTML(open("http://news.osu.edu/news/"))

3.times {puts"\n"}
20.times {print"*"} 
print "Web Scraper ALPHA build" 
20.times {print"*"}
3.times {puts"\n"}

#create a file to write html code to
file = File.open("webpage.html", 'w')
#file.write("<!DOCTYPE html>\n")
file.write("<html lang=\"en\">\n")
file.write("\t<head>\n")
file.write("\t\t<title>Test</title>\n")
file.write("\t\t<meta charset=\"utf-8\" />\n") 
file.write("\t</head>\n")
file.write("\t<body>\n")
file.write("\t\t<p>\n")
file.write("\t\t\tTest\n") 
file.write("\t\t<\p>\n") 
file.write("\t</body>\n")
file.write("</html>\n")

Launchy.open("file:///home/zach/cse3901/lab3/webpage.html")

arrTitle = Array.new

=begin
this puts the title(text) that is in h4 tags
in an arry.  Current has extras, need to remove
or come up with a Better way to find the titles.
=end
doc.xpath('//h4').each do |title|
	arrTitle << title.text
end



=begin
This grabs the links following the tags. Then place into an array.
=end
links = doc.xpath('//h4/a/@href')
arrLinks = Array.new links.to_a


=begin
This loop dispays the print the titles of the articles along
with the link the story.
=end
for i in 0..arrTitle.size do
	print "Title: "+ arrTitle[i].to_s
	print "\n"
	print "Link: "
	print "www.news.osu.edu/"+arrLinks[i].to_s
	print"\n\n"
end

#links.to_a.each {|x| puts"www.news.osu.edu/"+ x}

=begin
Just another way I was trying to get
puts links2=doc.css('div.post a')
=end


