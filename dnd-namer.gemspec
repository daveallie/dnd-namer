# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dnd-namer/version'

Gem::Specification.new do |gem|
  gem.name          = "dnd-namer"
  gem.version       = DndNamer::VERSION
  gem.authors       = ["Dave Allie"]
  gem.email         = ["dave@daveallie.com"]
  gem.description   = %q{Random item and Heroku-ish name generator that uses D&D classes and races.}
  gem.summary       = %q{DnD Namer is a random item and Heroku-ish name generator that uses D&D classes and races.}
  gem.homepage      = "https://github.com/daveallie/dnd-namer"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
