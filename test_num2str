require 'minitest/autorun'
require './num2str'

class TestNum2str <Minitest::Test
  def test_handle_bit
    assert_equal "one", handle_bit(1)
  end

  def test_handle_bit
    assert_equal "nine", handle_bit(9)
  end

  def test_handle_ten
    assert_equal "eleven", handle_ten(11)
  end

  def test_handle_ten
    assert_equal "ten", handle_ten(10)
  end

  def test_handle_ten
    assert_equal "ninety-nine", handle_ten(99)
  end

  def test_handle_hundred
    assert_equal "one hundred", handle_hundred(100)
  end

  def test_handle_hundred
    assert_equal "one hundred one", handle_hundred(101)
  end

  def test_handle_hundred
    assert_equal "nine hundred ninety-nine", handle_hundred(999)
  end

  def test_handle_basic_num
    assert_equal "nine hundred nine", handle_basic_num(909)
  end

  def test_split_num
    assert_equal [234, 1], split_num(1234)
  end

  def test_num_str
    assert_equal "one", num_str(1)
  end

  def test_num_str
    assert_equal "zero", num_str(0)
  end

  def test_num_str
    assert_equal "one thousand one", num_str(1001)
  end

  def test_num_str
    assert_equal "one billion one hundred million one", num_str(1100000001)
  end

  def test_num_str
    assert_equal "one billion two hundred thirty-four million five hundred sixty-seven thousand eight hundred ninety", num_str(1234567890)
  end

  def test_num_str
    assert_equal " one hundred twenty-three trillion four hundred fifty-six billion seven hundred eighty-nine million twelve thousand three hundred forty-five ", num_str(123456789012345)
  end


end
