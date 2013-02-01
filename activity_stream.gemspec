# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activity_stream/version'

Gem::Specification.new do |gem|
  gem.name          = "activity_stream"
  gem.version       = ActivityStream::VERSION
  gem.authors       = ["ecoologic"]
  gem.email         = ["erikecoologic@gmail.com"]
  gem.description   = %q{A Gem for the plugin: git://github.com/evilmarty/activity_stream.git}
  gem.summary       = %q{Project update in order to move from Rails 2.3.5 to 3.2 (or 4?)}
  gem.homepage      = "https://github.com/organizations/net-engine/activity_stream"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
