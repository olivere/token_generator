# -*- encoding: utf-8 -*-
#require File.expand_path('../lib/version', __FILE__)

extra_rdoc_files = ['README']

Gem::Specification.new do |s|
  s.name = 'token_generator'
  s.version = '0.1.1'
  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ['David Heinemeier Hansson, Marcel Molina Jr.']
  s.description = %q{Mix in for classes that need to generate (unique) tokens.}
  s.email = ['oliver.eilhard@gmail.com']
  s.extra_rdoc_files = extra_rdoc_files
  s.homepage = 'http://github.com/olivere/token_generator'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.summary = s.description
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files = `git ls-files -- {bin,lib,spec}/*`.split("\n") + extra_rdoc_files
  s.test_files = `git ls-files -- {spec}/*`.split("\n")

  s.add_development_dependency("bundler", "~> 1.0")
  s.add_development_dependency("rdoc", "~> 2.5")
  s.add_development_dependency("rake", ">= 0.8")
end

