# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'never_do/version'

Gem::Specification.new do |spec|
  spec.name          = "never_do"
  spec.version       = NeverDo::VERSION
  spec.authors       = ["delta"]
  spec.email         = ["delta4d@gmail.com"]

  spec.summary       = %q{command line todo app}
  spec.description   = %q{a simple command line todo app}
  spec.homepage      = "https://github.com/delta4d/never_do"

  spec.licenses      = ["MIT"]

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["x"]
  spec.require_paths = ["lib"]

  spec.add_dependency "colorize", "~> 0.8"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
