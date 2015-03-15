class Shape

  def initialize(base, height)
    @base = base
    @height = heighgitt
  end

  def base
    @base
  end

  def height
    @height
  end

  def area
    _area = @base * @height
    _area
  end

  def show_area
    puts "The area of your #{self.class.name} is #{area}"
  end


end

class Square < Shape

  attr_reader :base, :height

  # def initialize(base)
  #   @base = base
  #   @height = base
  # end
end

class Circle < Shape

  attr_reader :base, :height

  # def initialize(radius)
  #   @base = radius
  #   @height = radius
  # end

  def area
    _area = Math::PI * super
  end
end

class Triangle < Shape

  attr_reader :base, :height

  # def initialize(base, height)
  #   super
  #   @base = base
  #   @height = height
  # end

  def area
    _area = super / 2
    _area
  end

end



square = Square.new(3)
puts square.show_area

triangle = Triangle.new(4, 5)
puts triangle.show_area

circle = Circle.new(5)
puts circle.show_area
