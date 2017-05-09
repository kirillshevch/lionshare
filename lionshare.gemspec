# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lionshare/version'

Gem::Specification.new do |spec|
  spec.name          = 'lionshare'
  spec.version       = Lionshare::VERSION
  spec.authors       = ['Kirill Shevchenko']
  spec.email         = ['hello@kirillshevch.com']

  spec.summary       = 'A Ruby interface to the Lionshare API.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/kirillshevch/lionshare'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'http'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.5.0'
  spec.add_development_dependency 'byebug', '~> 3.5.0'
  spec.add_development_dependency 'rubocop', '~> 0.48.0'
  spec.add_development_dependency 'vcr'
end
