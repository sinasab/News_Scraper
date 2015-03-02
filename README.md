# Project 3

## Instructions
To run: Download all the files, then run "bundle install" in the terminal from the project directory. Then, run "bundle exec ruby webScraper.rb" in the terminal from the project directory.

Note: We added functionality to automatically open the output file in a browser, but sometimes this throws an error, so we made it optional. You can still manually open the file. 

## Roles
* Overall Project Manager: Roman Claprood
* Documentation Manager: Tom Antenucci
* Testing Manager: Zach Spieler
* Implementation Manager: Sina Sabet

## Contributions
Please list who did what for each part of the project, and if anyone [pair programmed](http://en.wikipedia.org/wiki/Pair_programming) in this section.

Roman: Started webScraper.rb. Used nokogiri gem to parse/grab Title of articles and links to webpage. Wrote functions for grabbing elements 
and printing them in HTML format.

Tom:

Zach: Played with launchy gem to try and have the program automatically open the html file. It was later decided to have the user open it instead. Wrote code to have all of the html structure be written to a separate file. Organized code once complete so our main file (webScraper.rb) was as clean as possible. Move all functions in the program to their own respective files. Found ruby gem (launchy) to use that would open browser directly from program.

Sina: Prettied up console output and added functionality to open the file automatically in the user's default web browser. Made outro.rb. Added to intro.rb. 

Steven:

## Testing
Please put all testing materials (writeups code etc) in the `testing` dir.
