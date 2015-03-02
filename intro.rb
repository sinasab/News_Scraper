=begin

Prints introductory message to console, including description of what the program will do.
	
=end

def intro()
	system "clear"
	3.times {puts"\n"}
	25.times {print"*"} 
	print "TCP's News Scraper" 
	25.times {print"*"}
	puts""
	3.times {puts"\n"}
	print("This script will scrape the data at http://news.osu.edu/news/ to give you a \"front page\" of news from around campus!")
	3.times {puts"\n"}
	print("The output will be placed in a file called \"webpage.html\" located in the same directory as this script. The file can be opened in your favorite browser, or in Internet Explorer if you are a noob.")
	3.times {puts"\n"}
	print "Press enter to begin"
	gets
end