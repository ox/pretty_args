Gem::Specification.new do |s|
  s.name = "pretty_args"
  s.summary = "make your programs arguments pretty to read and understand with a branching diagram"

  s.version = '0.5'
  s.description = 'a pretty argument usage display'
  s.author = 'Artem Titoulenko'
  s.email = 'artem.titoulenko@gmail.com'
  s.homepage = 'https://github.com/ArtemTitoulenko/pretty_args'

  s.files        = Dir["lib/**/*"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.has_rdoc = false
end
