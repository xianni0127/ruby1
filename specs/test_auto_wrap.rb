
require 'minitest/autorun'
require './auto_wrap'

class TestRuby4 <Minitest::Test
  def setup
    @autowrap = AutoWrap.new
  end
  def test_ruby4
    assert_equal "qewe rweg we \naef akvw erge \nrg ", @autowrap.getword("qewe rweg we aef akvw erge rg", 15)
  end
end
