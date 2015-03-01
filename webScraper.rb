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
25.times {print"*"} 
print "Web Scraper BETA build" 
25.times {print"*"}
puts""
print("\t\tLook for webpage.html output in folder")
3.times {puts"\n"}

=begin
this puts the title(text) that is in h4 tags
in an array. Refined to only select tags wwhich are
hr4 and have a class of title.

returns: An array of the titles of links.
written by:Roman
=end
def grabTitles(doc,file)
	arrTitle = Array.new
	doc.xpath('//h4[@class="title"]').each do |title|
		(arrTitle << title.text)
	end
	return arrTitle
end


=begin
This grabs the links following the tags. Then place into an array.

returns: An array of links to the news stories.
written by Roman
=end
def grabLinks(doc)
	links = doc.xpath('//h4/a/@href')
	arrLinks = Array.new links.to_a
	return arrLinks
end

=begin
This loop dispays the print the titles of the articles along
with the link the story in HTML form.

Written by Roman
=end
def writeLinkTags(doc,file)
	titles =grabTitles(doc,file)
	links =grabLinks(doc)
	for i in 0..titles.size do
		file.write ("\n")
		file.write ("\t\t<h4 class=\"title\"><a href=")
		file.write ("\"http://www.news.osu.edu/")
		file.write (links[i])
		file.write ("\""">"+titles[i].to_s+"</a></h4>")
		file.write("\n")
	end
end

# #create a file to write html code to
#Written by Zach, editied by Tom
file.write("<!DOCTYPE html>\n")
file.write("<html lang=\"en\">\n")
file.write("\t<head>\n")
file.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />")
file.write("\t\t<title>TCP WebScraper</title>\n")
file.write("\t\t<meta charset=\"utf-8\" />\n") 
file.write("\t</head>\n")
file.write("\t<body>\n")
file.write("\t<br /><h1>TCP OHIO STATE NEWS WEBSCRAPER<h1/>")
writeLinkTags(doc,file)
file.write("\t\t<p>\n")
file.write("\t\t</p>\n") 
file.write("\t</body>\n")
file.write("</html>\n")





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


