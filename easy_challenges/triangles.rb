# Write a program to determine whether a triangle is equilateral, isosceles, or scalene.
# An equilateral triangle has all three sides the same length.
# An isosceles triangle has exactly two sides of the same length.
# A scalene triangle has all sides of different lengths.
# Note: For a shape to be a triangle at all, all sides must be of length > 0, and the sum of the lengths of any two sides must be greater than the length of the third side.

class Triangle

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
    if @sideA <= 0 || @sideB <= 0 || @sideC <= 0
      raise ArgumentError
    end
    if @sideA + @sideB <= @sideC || @sideB + @sideC <= @sideA || @sideA + @sideC <= @sideB
      raise ArgumentError
    end
  end

  def kind
    if @sideA == @sideB && @sideB == @sideC
      'equilateral'
    elsif @sideA == @sideB || @sideB == @sideC || @sideA == @sideC
      'isosceles'
    else
      'scalene'
    end
  end

end
