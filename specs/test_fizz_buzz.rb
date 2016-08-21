require 'minitest/autorun'
require './fizz_buzz'

class TestExample <Minitest::Test
  def setup
    @fizzbuzz = FizzBuzz.new
  end

  def test_array_15
    assert_equal "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz Fizz 14 FizzBuzz ", @fizzbuzz.putssomething(1..15)
  end
  def test_array_3
    assert_equal "1 2 Fizz ", @fizzbuzz.putssomething(1..3)
  end
  def test_array_5
    assert_equal "1 2 Fizz 4 Buzz ", @fizzbuzz.putssomething(1..5)
  end
end
