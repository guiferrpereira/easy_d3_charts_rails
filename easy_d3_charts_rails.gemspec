# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'easy_d3_charts_rails/version'

Gem::Specification.new do |s|
  s.name        = "easy_d3_charts_rails"
  s.version     = EasyD3ChartsRails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Guilherme Pereira']
  s.email       = ['guiferrpereira@gmail.com']
  s.homepage    = "https://github.com/guiferrpereira/easy_d3_charts_rails"
  s.summary     = "d3 charts gem for rails"
  s.description = "use d3 charts js libary to visualization your data by rubygem/rails"

  # s.extra_rdoc_files  = [ "README.md", "CHANGELOG.md" ]
  # s.rdoc_options      = [ "--charset=UTF-8" ]

  s.required_rubygems_version = "~> 1.3"

  s.add_dependency "bundler", "~> 1.0"

  s.description = <<-DESC
    easy_d3_charts_rails is a Rails 3.x gem for displaying d3 graphs.
  DESC

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'

end
