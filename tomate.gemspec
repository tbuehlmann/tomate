# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tomate/version'

Gem::Specification.new do |spec|
  spec.name          = 'tomate'
  spec.version       = Tomate::VERSION
  spec.authors       = ['Tobias Bühlmann']
  spec.email         = ['tobias.buehlmann@gmx.de']
  spec.summary       = 'Ruby based Pomodoro timer.'
  spec.description   = 'Starts a Pomodoro timer and notifies via notify-send.'
  spec.homepage      = 'https://github.com/tbuehlmann/tomate'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.2'
  spec.add_dependency('slop', '~> 3.4')
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'pry', '0.9.12'
end
