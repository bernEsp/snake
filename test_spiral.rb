require 'minitest/autorun'
require '~/canino_projects/snake/spiral'
class TestHorizontal < Minitest::Test
  def setup
    @spiral = Spiral.new(2)
  end

  def test_move
    @spiral.move
    assert_equal [1,2,4,3], @spiral.result
  end
end
