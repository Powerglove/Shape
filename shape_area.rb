class Shape
  def initialize(base, height)
    @base = base
    @height = height
  end

  def base
    @base
  end

  def height
    @height
  end

  def area
    _area = @base * @height
    puts "The area of your #{self.class.name} is #{_area}"
    _area
  end
end

class Square < Shape
  def initialize(base)
    @base = base
    @height = base
  end
end

class Circle < Shape
  def initialize(radius)
    @base = radius
    @height = radius
  end

  def area
    _area = Math::PI * super
    puts "The area of your #{self.class.name} is #{_area}"
    _area
  end
end

class Triangle < Shape
  attr_accessor :area

  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    _area = super / 2
    puts "The area of your #{self.class.name} is #{_area}"
    _area
  end
end



square = Square.new(3)
square.area

triangle = Triangle.new(4, 5)
triangle.area

circle = Circle.new(3)
circle.area
