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