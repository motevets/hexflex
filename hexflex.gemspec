# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hexflex/version'

Gem::Specification.new do |spec|
  spec.name          = "hexflex"
  spec.version       = Hexflex::VERSION
  spec.authors       = ["Tom Dunlap"]
  spec.email         = ["apocryphalauthor@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = "Generate hexaflexagons read to print and fold!"
  spec.description   = `cat README.md`
  spec.homepage      = "http://github.com/aauthor/hexflex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rmagick", "~> 2.13.4"
  spec.add_dependency "activesupport", "~>4.2.1"

  spec.add_development_dependency "bundler", "~> 1.9.1"
  spec.add_development_dependency "rspec", "~> 3.2.0"
  spec.add_development_dependency "rake", "~> 10.4.2"
  spec.add_development_dependency "pry-byebug", "~> 3.1.0"
end
