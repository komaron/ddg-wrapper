# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ddg-wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "ddg-wrapper"
  spec.version       = DDG::Wrapper::VERSION
  spec.authors       = ["Komaron James"]
  spec.email         = ["kjames953@gmail.com"]
  spec.summary       = %q{A Ruby Library wrapper around Duck Duck Go Instant Search API}
  spec.homepage      = "https://github.com/komaron/ddg-wrapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "json", "~> 1.8"
  spec.add_dependency 'pry', '~> 0.10'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
