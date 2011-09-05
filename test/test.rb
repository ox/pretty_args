require './pretty_args'
a1 = Arg.new 'foo', 'bar'
a2 = Arg.new 'baz', 'buz'
a3 = Arg.new 'fiz52s', 'bizz'
a4 = Arg.new "[options]", "this is a really long description that will most likely break my application. This is to test if the program correctly handles really long input strings and parses them the right way. For instance, the program should make another set of bars for every new line that comes from this text. I think this is long enough."
a5 = Arg.new 'lol', 'cats'
a6 = Arg.new 'bat', 'mobile'
a7 = Arg.new "[options]", "this is a really long description that will most likely break my application. This is to test if the program correctly handles really long input strings and parses them the right way. For instance, the program should make another set of bars for every new line that comes from this text. I think this is long enough."
a8 = Arg.new "[flags]", "this is a really long description that will most likely break my application. This is to test if the program correctly handles really long input strings and parses them the right way."

ac = ArgCollection.new a1, a2, a3, a4, a5, a6, a7, a8
ac.draw
puts ac.arg_length
