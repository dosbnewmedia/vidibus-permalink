# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'vidibus/permalink/version'

Gem::Specification.new do |s|
  s.name = 'vidibus-permalink'
  s.version = Vidibus::Permalink::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = 'Andre Pankratz'
  s.email = 'andre@vidibus.com'
  s.homepage = 'https://github.com/vidibus/vidibus-permalink'
  s.summary = 'Permalink handling'
  s.description = 'Allows changeable permalinks (good for SEO).'
  s.license = 'MIT'

  s.required_rubygems_version = '>= 3'

  s.add_dependency 'activesupport', '>= 6'
  s.add_dependency 'mongoid', '~> 7'
  # s.add_dependency 'vidibus-core_extensions', github: "dosbnewmedia/vidibus-core_extensions", branch: 'mongoid-7'
  # s.add_dependency 'vidibus-words',  github: "dosbnewmedia/vidibus-words", branch: 'mongoid-7'

  s.add_development_dependency 'bundler', '>= 1.0.0'
  s.add_development_dependency 'rspec', '~> 3'
  s.add_development_dependency 'rr'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rdoc', '~> 3.4'
  s.add_development_dependency 'simplecov'

  s.files = Dir.glob('{lib,app,config}/**/*') + %w[LICENSE README.md Rakefile]
  s.require_path = 'lib'
end
