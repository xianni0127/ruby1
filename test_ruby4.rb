<<<<<<< cdfd12e044b8ddb133b12d731c6a5065b6cc0016
=======

>>>>>>> add the second third and forth homework
require 'minitest/autorun'
require './ruby4'

class TestRuby4 <Minitest::Test
  def test_ruby4
    assert_equal "qewe rweg we \naef akvw erge \nrg ", getword("qewe rweg we aef akvw erge rg", 15)
  end
end
