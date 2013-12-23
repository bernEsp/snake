require 'minitest/autorun'
require '~/canino_projects/snake/vertical'
class TestVertical < Minitest::Test
  def setup
    @vertical = Vertical.new(2)
  end

  def test_move
    @vertical.move
    assert_equal [1,3,4,2], @vertical.result
  end
end
