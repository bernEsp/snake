require "#{File.dirname(__FILE__)}/movement"
class Spiral < Movement
  
  def setup
    @start = 0
    @finish = @order - 1
    @vector = 1
    @tmp_matrix = 1
    @tmp_matrix_size = @order
    @last_fn = @start
  end

  def move
    setup
    until @tmp_matrix > @order+(@order-1)
      case @vector
      when 1
        move_x_positive @last_fn, @last_fn + (@tmp_matrix_size -1) 
        @last_fn = @last_fn+(@tmp_matrix_size-1)
      when 2
        move_y_positive @last_fn+@order,@last_fn + ((@tmp_matrix_size - 1) * @order) 
        @last_fn = @last_fn + ((@tmp_matrix_size - 1)  * @order)
        @tmp_matrix_size -= 1 unless @tmp_matrix_size <= 1
      when 3
        move_x_negative @last_fn - 1, (@last_fn -1) - (@tmp_matrix_size -1)
        @last_fn = (@last_fn -1 ) - (@tmp_matrix_size - 1)
      when 4
        move_y_negative @last_fn - @order, @start + @order
        @last_fn = (@start + @order)+1
        @start = @last_fn
        @tmp_matrix_size -= 1 unless @tmp_matrix_size <= 1
      end
      @vector += 1
      @tmp_matrix += 1
      if @vector > 4
        @vector = 1
      end
    end
    super
  end
end
