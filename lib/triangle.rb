class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_triangle
    arr = []
    arr << @side1
    arr << @side2
    arr << @side3
    arr.sort
    arr[2] <= arr[0] + arr[1]
  end
  def type
    if @side1 == @side2 && @side1 == @side3
       'equilateral'
    elsif @side1 == @side2 || @side2 == @side3
       'isosceles'
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
       'scalene'
    end
  end
end

test_tri = Triangle.new(6,5,4)
puts test_tri.type


