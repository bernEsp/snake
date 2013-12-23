require "#{File.dirname(__FILE__)}/movement"
class Spiral < Movement
  
  def setup
    @st = 0
    @fn = @n - 1
    @i = 1
    @j = 1
    @k = 1
    @nm_size = @n
    @last_fn = @st
  end

  def move
    setup
    until @k > @n+(@n-1)
      case @j
      when 1
        move_x_positive @last_fn, @last_fn + (@nm_size -1) 
        @last_fn = @last_fn+(@nm_size-1)
      when 2
        move_y_positive @last_fn+@n,@last_fn + ((@nm_size - 1) * @n) 
        @last_fn = @last_fn + ((@nm_size - 1)  * @n)
        @nm_size -= 1 unless @nm_size <= 1
      when 3
        move_x_negative @last_fn - 1, (@last_fn -1) - (@nm_size -1)
        @last_fn = (@last_fn -1 ) - (@nm_size - 1)
      when 4
        move_y_negative @last_fn - @n, @st + @n
        @last_fn = (@st + @n)+1
        @st = @last_fn
        @nm_size -= 1 unless @nm_size <= 1
      end
      @j += 1
      @k += 1
      if @j > 4
        @j = 1
        @i += 1
      end
    end
    super
  end
end
