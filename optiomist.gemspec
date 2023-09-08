# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'optiomist'
  s.version = '0.0.2'
  s.summary = 'A simple implementation of an optional value pattern'
  s.description = 'Optiomist represents an optional value. Be an optimist. The glass will never be half nil.'
  s.authors = ['Michał Radmacher']
  s.email = 'michal@radmacher.pl'
  s.required_ruby_version = '>= 2.7.0'
  s.extra_rdoc_files = ['README.md']
  s.files = Dir['lib/**/*.rb']
  s.homepage = 'https://github.com/mradmacher/optiomist'
  s.license = 'MIT'
  s.metadata['rubygems_mfa_required'] = 'true'
end
