# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fog/xenserver/version'

Gem::Specification.new do |spec|
  spec.name          = 'fog-xenserver'
  spec.version       = Fog::Xenserver::VERSION
  spec.authors       = %q(Paulo Henrique Lopes Ribeiro)
  spec.email         = %q(plribeiro3000@gmail.com)
  spec.description   = %q{Module for the 'fog' gem to support XENSERVER.}
  spec.summary       = %q{This library can be used as a module for `fog` or as standalone provider
                        to use the XENSERVER in applications.}
  spec.homepage      = 'https://github.com/fog/fog-xenserver'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_dependency 'fog-core'
  spec.add_dependency 'fog-xml'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end