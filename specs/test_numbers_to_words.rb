require 'minitest/autorun'
require './numbers_to_words'

class TestNum2str <Minitest::Test
  def setup
    @numberswords = NumbersWords.new
  end

  def test_handle_bit
    assert_equal "one", @numberswords.handle_bit(1)
  end

  def test_handle_bit
    assert_equal "nine", @numberswords.handle_bit(9)
  end

  def test_handle_ten
    assert_equal "eleven", @numberswords.handle_ten(11)
  end

  def test_handle_ten
    assert_equal "ten", @numberswords.handle_ten(10)
  end

  def test_handle_ten
    assert_equal "ninety-nine", @numberswords.handle_ten(99)
  end

  def test_handle_hundred
    assert_equal "one hundred", @numberswords.handle_hundred(100)
  end

  def test_handle_hundred
    assert_equal "one hundred one", @numberswords.handle_hundred(101)
  end

  def test_handle_hundred
    assert_equal "nine hundred ninety-nine", @numberswords.handle_hundred(999)
  end

  def test_handle_basic_num
    assert_equal "nine hundred nine", @numberswords.handle_basic_num(909)
  end

  def test_split_num
    assert_equal [234, 1], @numberswords.split_num(1234)
  end

  def test_num_str
    assert_equal "one", @numberswords.num_str(1)
  end

  def test_num_str
    assert_equal "zero", @numberswords.num_str(0)
  end

  def test_num_str
    assert_equal "one thousand one", @numberswords.num_str(1001)
  end

  def test_num_str
    assert_equal "one billion one hundred million one", @numberswords.num_str(1100000001)
  end

  def test_num_str
    assert_equal "one billion two hundred thirty-four million five hundred sixty-seven thousand eight hundred ninety", @numberswords.num_str(1234567890)
  end

  def test_num_str
    assert_equal " one hundred twenty-three trillion four hundred fifty-six billion seven hundred eighty-nine million twelve thousand three hundred forty-five ", @numberswords.num_str(123456789012345)
  end


end
