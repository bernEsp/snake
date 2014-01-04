require "#{File.dirname(__FILE__)}/movement"
class Horizontal < Movement

  def move 
    until @vector > @order-1 do
      if @vector%2 == 0
        move_x_positive (@vector*@order),(((@vector+1)*(@order))-1)
      else
        move_x_negative ((@vector+1)*(@order))-1, @order*@vector
      end
      @vector += 1
    end
    super
  end

end
