require "#{File.dirname(__FILE__)}/movement"
class Vertical < Movement

  def move
    until @vector > @order-1 do
      if @vector%2 == 0
        move_y_positive @vector,(@order*(@order-1))+@vector
      else
        move_y_negative @vector+(@order*(@order-1)),@vector
      end
      @vector += 1
    end
    super
  end

end
