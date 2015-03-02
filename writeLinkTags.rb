require_relative './grabTitles'
require_relative './grabDates'
require_relative './grabLinks'

=begin
This loop dispays the print the titles of the articles along
with the link the story in HTML form.

Written by Roman, contributions by Steve
=end
def writeLinkTags(doc,file)
	titles =grabTitles(doc,file)
	links =grabLinks(doc)
	dates = grabDates(doc)
	for i in 0..titles.size do
		file.write ("\n")
		file.write ("\t\t<tr>\n")
		file.write ("\t\t\t<td>\n")
		file.write ("\t\t\t\t<h4 class=\"title\"><a href=")
		file.write ("\"http://www.news.osu.edu/")
		file.write (links[i])
		file.write ("\""">"+titles[i].to_s+"</a></h4>\n")
		file.write ("\t\t\t</td>\n")
		file.write ("\t\t\t<td>\n")
		file.write ("\t\t\t\t<p>" + dates[i].to_s + "</p>\n")
		file.write ("\t\t\t</td>\n")
		file.write("\n")
	end
end