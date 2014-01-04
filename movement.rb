class Movement
  
  def initialize(size = 0)
    @result = [] 
    @order = size
    @matrix = (1..@order*@order).map(&:to_i)
    @vector = 0
    @i = 0
  end

  def result
    @result
  end
 
  def << step
    @result << step
  end

  def move_x_positive start, finish
    for x in (start).upto(finish)
      self << @matrix[x]
    end
  end

  def move_x_negative start, finish
    for x in (start).downto(finish)
      self << @matrix[x]
    end
  end 

  def move_y_positive start, finish
    y = start 
    until y > finish do
      self << @matrix[y]
      y += @order
    end
  end

  def move_y_negative start, finish
    y = start
    until y < finish do
      self << @matrix[y]
      y -= @order
    end
  end

  def move
    "original              | result             \n #{@matrix}            |                       #{result}\n"
  end
end
