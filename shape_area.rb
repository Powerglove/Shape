require 'byebug'

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
end

class Triangle < Shape

  # attr_reader :base, :height

  def initialize(base, height)
    super
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
# puts square.area

triangle = Triangle.new(4, 5)
puts triangle.area
