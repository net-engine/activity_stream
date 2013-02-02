# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activity_stream/version'

Gem::Specification.new do |gem|
  gem.name          = "evilmarty_activity_stream"
  gem.version       = ActivityStream::VERSION
  gem.authors       = ["ecoologic"]
  gem.email         = ["erik@netengine.com.au"]
  gem.description   = %q{A Gem for the plugin: https://github.com/evilmarty/activity_stream}
  gem.summary       = %q{This is a dependency we intend to maintain in order to upgrade our own projects from Rails 2.3.5 to 3.2 (or 4?)}
  gem.homepage      = "https://github.com/organizations/net-engine/activity_stream"

  gem.add_development_dependency 'rake', ['0.8.7']
  gem.add_development_dependency 'rails', ['2.3.16']
  gem.add_development_dependency 'sqlite3'


  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
