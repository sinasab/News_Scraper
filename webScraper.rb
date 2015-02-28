require 'mechanize'
require 'nokogiri'
require 'open-uri'
require 'launchy'
require 'rubygems'

#not being used 
mech = Mechanize.new
#sets of a page to be parse. doc is the name
doc = Nokogiri::HTML(open("http://news.osu.edu/news/"))
#create a file to write html code to
file = File.open("webpage.html", 'w')

3.times {puts"\n"}
20.times {print"*"} 
print "Web Scraper ALPHA build" 
20.times {print"*"}
3.times {puts"\n"}

=begin
this puts the title(text) that is in h4 tags
in an arry.  Current has extras, need to remove
or come up with a Better way to find the titles.
=end
def grabTitles(doc,file)
	arrTitle = Array.new
	doc.xpath('//h4').each do |title|
		(arrTitle << title.text)
	end
	return arrTitle
end


=begin
This grabs the links following the tags. Then place into an array.
=end
def grabLinks(doc)
	links = doc.xpath('//h4/a/@href')
	arrLinks = Array.new links.to_a
	return arrLinks
end

=begin
This loop dispays the print the titles of the articles along
with the link the story.
=end
def writeLinkTags(doc,file)
	titles =grabTitles(doc,file)
	links =grabLinks(doc)
	for i in 0..titles.size do
		file.write ("\n")
		file.write ("\t\t<h1 class=\"title\"><a href=")
		file.write ("\"http://www.news.osu.edu/")
		file.write (links[i])
		file.write ("\""">"+titles[i].to_s+"</a></h1>")
		file.write("\n")
	end
end

# #create a file to write html code to
# file = File.open("webpage.html", 'w')
file.write("<!DOCTYPE html>\n")
file.write("<html lang=\"en\">\n")
file.write("\t<head>\n")
file.write("\t\t<title>Test</title>\n")
file.write("\t\t<meta charset=\"utf-8\" />\n") 
file.write("\t</head>\n")
file.write("\t<body>\n")
writeLinkTags(doc,file)
file.write("\t\t<p>\n")
file.write("\t\t\tTest\n") 
file.write("\t\t<\p>\n") 
file.write("\t</body>\n")
file.write("</html>\n")



# arrTitle = Array.new


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


