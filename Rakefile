<<<<<<< HEAD
namespace :test do
task :fizz_buzz do
  sh "ruby specs/test_example.rb"
end

task :numbers_to_words do
  sh "ruby specs/test_num2str.rb"
end

task :auto_wrap do
  sh "ruby specs/test_ruby4.rb"
end

task :all=>['fizz_buzz','numbers_to_words','auto_wrap'] do
end
end

task :test=>['test:fizz_buzz','test:numbers_to_words','test:auto_wrap'] do
end
=======
require "./test_example"
require "./test_ruby4"
require "./test_num2str"

task :fizz_buzz do
  sh "ruby test_example.rb"
end

task :numbers_to_words do
  sh "ruby test_num2str.rb"
end

task :auto_wrap do
  sh "ruby test_ruby4.rb"
end

task :all do
  sh "ruby test_example.rb"
  sh "ruby test_ruby4.rb"
  sh "ruby test_num2str.rb"
end
task default: %w[all]
>>>>>>> 13b0014
