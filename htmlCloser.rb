# #create a file to write html code to
#Written by Zach, editied by Tom


def htmlCloser(file)
	file.write("\t</table>")
	file.write("\t\t<p>\n")
	file.write("\t\t</p>\n") 
	file.write("\t</body>\n")
	file.write("</html>\n")
end