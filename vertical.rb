require "#{File.dirname(__FILE__)}/movement"
class Vertical < Movement

  def move
    until @j > @n-1 do
      if @j%2 == 0
        move_y_positive @j,(@n*(@n-1))+@j
      else
        move_y_negative @j+(@n*(@n-1)),@j
      end
      @j += 1
    end
    super
  end

end
