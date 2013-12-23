require "#{File.dirname(__FILE__)}/vertical"
require "#{File.dirname(__FILE__)}/horizontal"
require "#{File.dirname(__FILE__)}/spiral"
require "benchmark"
class SnakeGame
  def play
    size = space_width
    kindof = kindof_game
    Object.const_get(kindof).new(size).move
  end

  private
    def space_width
      print "Matrix size: (square matrix train will be create)\n"
      gets.chomp.to_i
    end

    def kindof_game
      print "Pick one kind of game 'h'orizontal | 'v'ertical | 's'piral: "
      case gets.chomp
      when "h"
        "Horizontal"
      when "v"
        "Vertical"
      when "s"
        "Spiral"
      else
        "Spiral"
      end
   end
end
if __FILE__ == $0
  Benchmark.bmbm do |x|
   x.report(:play) { print SnakeGame.new.play}
  end
  print "\n"
end
