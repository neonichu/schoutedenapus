# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-schoutedenapus/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-schoutedenapus'
  spec.version       = CocoapodsSchoutedenapus::VERSION
  spec.authors       = ['Boris Bügling']
  spec.email         = ['boris@icculus.org']
  spec.summary       = 'Generate Swift packages from podspecs.'
  spec.homepage      = 'https://github.com/neonichu/Schoutedenapus'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
