require 'minitest/autorun'
require '~/canino_projects/snake/horizontal'
class TestHorizontal < Minitest::Test
  def setup
    @horizontal = Horizontal.new(2)
  end

  def test_move
    @horizontal.move
    assert_equal [1,2,4,3], @horizontal.result
  end
end
