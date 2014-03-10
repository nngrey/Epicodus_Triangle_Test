require 'rspec'
require 'triangle'

describe Triangle do
  it('initializes a new Triangle object') do
    test_triangle = Triangle.new(4,5,6)
    test_triangle.should be_an_instance_of Triangle
  end

  describe "type" do
    it('returns "equilateral" if all sides are equal') do
      test_triangle = Triangle.new(4,4,4)
      test_triangle.type.should eq ('equilateral')
    end

    it('returns "isosceles" if two sides are equal') do
      test_triangle = Triangle.new(6,6,3)
      test_triangle.type.should eq ('isosceles')
    end

    it('returns "scalene" if all sides are different') do
      test_triangle = Triangle.new(6,5,3)
      test_triangle.type.should eq ('scalene')
    end
  end

  describe "test_triangle" do
    it('tests if the given sides can make a triangle') do
      test_triangle = Triangle.new(2, 2, 2)
      test_triangle.is_triangle.should eq (true)
    end
      it('tests if the given sides can make a triangle') do
      test_triangle = Triangle.new(2, 4, 8)
      test_triangle.is_triangle.should eq (false)
    end
  end

end
