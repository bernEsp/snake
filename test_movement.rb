require 'minitest/autorun'
require '~/canino_projects/snake/movement'
class TestMovement < Minitest::Test

  def setup
    @movement = Movement.new(2)
  end
    
  def test_move_x_positive
    @movement.move_x_positive 0, 1
    assert_equal [1,2], @movement.result
  end

  def test_move_x_negative
    @movement.move_x_negative 1, 0
    assert_equal [2,1], @movement.result
  end

  def test_move_y_positive
    @movement.move_y_positive 0,2
    assert_equal [1,3], @movement.result
  end

  def test_move_y_negative
    @movement.move_y_negative 3,1
    assert_equal [4,2], @movement.result
  end
end
