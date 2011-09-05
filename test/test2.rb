require 'pretty_args'

#make a collection of arguments
ac = ArgCollection.new

#add a few arguments
ac.add '[options]', 'something about x'
ac.add '<file>', 'the file name'

#draw them to the screen
puts "program usage:"
ac.draw
