require 'minitest/autorun'
require '~/canino_projects/snake/snake_game'
class TestSnakeGame < Minitest::Test
  def setup
    @size = 2
    @snake_game = SnakeGame.new
  end

  def test_play
    result = @snake_game.play
    assert_match %r%[1,2,4,3]%,result 
  end
end
