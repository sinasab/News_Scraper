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