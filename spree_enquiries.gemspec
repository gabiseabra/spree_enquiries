# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_enquiries/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_enquiries'
  s.version     = SpreeEnquiries.version
  s.summary     = 'Add enquiries to spree admin'
  s.description = 'Add enquiries to spree admin'
  s.required_ruby_version = '>= 2.2.2'

  s.author    = 'Gabriela Seabra'
  s.email     = 'gabriela.lima.se@gmail.com'
  s.homepage  = 'https://github.com/gabiseabra/spree_enquiries'
  s.license   = 'BSD-3-Clause'

  # s.files       = `git ls-files`.split("\n")
  # s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 3.1.0', '< 4.0'

  s.add_runtime_dependency 'rubyzip', '~> 1.1.0'
  s.add_runtime_dependency 'axlsx', '2.1.0.pre'
  s.add_runtime_dependency 'axlsx_rails'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'appraisal'
end
