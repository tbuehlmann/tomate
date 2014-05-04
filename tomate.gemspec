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

  spec.require_paths = ['lib']
  spec.files = %w(
    .rspec
    Gemfile
    LICENSE
    Rakefile
    README.md
    bin/tomate
    lib/tomate.rb
    lib/tomate/timer.rb
    lib/tomate/version.rb
    spec/spec_helper.rb
    spec/timer_spec.rb
    tomate.gemspec
  )
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.required_ruby_version = '>= 1.9.2'
  spec.add_dependency('slop', '~> 3.5')
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.3'
  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'pry', '0.9.12'
end
