
require 'minitest/autorun'
require './ruby4.rb'

class TestRuby4 <Minitest::Test
  def test_ruby4
    assert_equal "qewe rweg we \naef akvw erge \nrg ", getword("qewe rweg we aef akvw erge rg", 15)
  end
end
