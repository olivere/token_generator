# Rakefile for TokenGenerator. -*-ruby-*
require 'rake/testtask'
require 'rdoc/task'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/test*.rb']
end

desc "Run all tests"
task :default => [:test]

desc "Generate RDoc documentation"
task :rdoc do
  sh(*%w{rdoc --line-numbers --main README
              --title 'Token Generator Documentation'
              --charset utf-8 -U -o doc} + 
              %w{README} + Dir["lib/**/*.rb"])
end
