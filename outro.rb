require 'launchy'
=begin
	Prints outro to console. Also gives user option to open the file automatically in their default web browser.
	Contributors: Sina
=end
def outro()
	puts "\n\nEnter a \"1\" and then press enter to have the script automatically open the file in your default web browser. Enter anything else to end the program.\n\nNote: opening the webpage automatically is an experimental feature, and may cause the program to break. You can always manually open the webpage.\n"
	if gets.chomp =="1"
		print "\nAttempting to open webpage using your default web browser..."
		Launchy.open("./webpage.html")
		print "done!\n"
	end
	puts "\n\nThanks for using our program! Goodbye!\n\n"
end
