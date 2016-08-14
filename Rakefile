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
