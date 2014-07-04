require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push %w(test)
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
end

desc 'Default Task'
task :default => [ :test ]