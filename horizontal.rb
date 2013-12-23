require '~/canino_projects/movement'
class Horizontal < Movement

  def move 
    until @j > @n-1 do
      if @j%2 == 0
        move_x_positive (@j*@n),(((@j+1)*(@n))-1)
      else
        move_x_negative ((@j+1)*(@n))-1, @n*@j
      end
      @j += 1
    end
    super
  end

end
