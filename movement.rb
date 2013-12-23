class Movement
  
  def initialize(size = 0)
    @result = [] 
    @n = size
    @matrix = (1..@n*@n).map(&:to_i)
    @j = 0
    @i = 0
  end

  def result
    @result
  end
 
  def << step
    @result << step
  end

  def move_x_positive st, fn
    for x in (st).upto(fn)
      self << @matrix[x]
    end
  end

  def move_x_negative st, fn
    for x in (st).downto(fn)
      self << @matrix[x]
    end
  end 

  def move_y_positive st, fn
    y = st 
    until y > fn do
      self << @matrix[y]
      y += @n
    end
  end

  def move_y_negative st, fn
    y = st
    until y < fn do
      self << @matrix[y]
      y -= @n
    end
  end

  def move
    "original              | result             \n #{@matrix}            |                       #{result}"
  end
end
