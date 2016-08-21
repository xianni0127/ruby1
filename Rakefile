namespace :test do
task :fizz_buzz do
  sh "ruby specs/test_fizz_buzz.rb"
end

task :numbers_to_words do
  sh "ruby specs/test_numbers_to_words.rb"
end

task :auto_wrap do
  sh "ruby specs/test_auto_wrap.rb"
end

task :all=>['fizz_buzz','numbers_to_words','auto_wrap'] do
end
end

task :test=>['test:fizz_buzz','test:numbers_to_words','test:auto_wrap'] do
end
