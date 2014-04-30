# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'palindromic/version'

Gem::Specification.new do |spec|
  spec.name          = "palindromic"
  spec.version       = Palindromic::VERSION
  spec.authors       = ["Rick Jones"]
  spec.email         = ["r13ckj@gmail.com"]
  spec.summary       = %q{Adds palindromic functionality to Ruby}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
