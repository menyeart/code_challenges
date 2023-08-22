

class Triangle
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def triangle_type
    sides_arr = [@a, @b, @c]


    angle = (Math.cos((@a ** 2 + @b ** 2 - @c ** 2) / (2 * @a * @b))) / (Math::PI / 180.0)
    p angle
    
  end
end