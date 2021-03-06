# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tiny_tds/java/version'

Gem::Specification.new do |spec|
  spec.name          = "tiny_tds"
  spec.version       = TinyTds::Java::VERSION
  spec.authors       = ["Thomas Steinhausen"]
  spec.email         = ["ts@image-addicts.de"]

  spec.summary       = %q{This is a shim for the tiny_tds adapter when used with jruby.}
  spec.description   = %q{This is a shim for the tiny_tds adapter when used with jruby. It's only purpose is to satisfy activerrecord-sqlserver-adapter's dependency on the tiny_tds gem.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.platform      = "java"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "pry"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
