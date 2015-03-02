=begin
This grabs the links following the dates. Then place into an array.

returns: An array of links to the news stories.
written by Steven
=end

def grabDates(doc)
	arrDate = Array.new
	doc.xpath('//span[@class="date"]').each do |date|
		(arrDate << date.text)
	end
	return arrDate
end