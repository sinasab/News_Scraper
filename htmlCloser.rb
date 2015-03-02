# #create a file to write html code to
#Written by Zach, editied by Tom

=begin
Takes a file as an input and writes html code to it in order to create an html file. Writes closing tags.

=end

def htmlCloser(file)
	file.write("\t</table>")
	file.write("\t\t<p>\n")
	file.write("\t\t</p>\n") 
	file.write("\t</body>\n")
	file.write("</html>\n")
end