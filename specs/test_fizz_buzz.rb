require 'minitest/autorun'
require './example.rb'

class TestExample <Minitest::Test
  def test_example
    assert_equal "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz Fizz 14 FizzBuzz ", putssomething(1..15)
  end
end
