# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'zog/version'

Gem::Specification.new do |spec|
  spec.name          = "zog"
  spec.version       = Zog::VERSION
  spec.authors       = ["Lyjia"]
  spec.email         = ["tom@tomcorelis.com"]
  spec.description   = %q{Colorizing, introspective, independent logging library.}
  spec.summary       = %q{Logging library for Ruby projects with colorization and caller introspection}
  spec.homepage      = "https://github.com/lyjia/zog/"
  spec.license       = "MIT"

  spec.files         = ['lib/zog.rb'] +  Dir.glob("lib/**/*.rb")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec",  "~> 3.8"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "awesome_print",  "~> 1.8"
end
