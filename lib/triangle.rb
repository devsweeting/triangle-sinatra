require 'pry'

class Triangle
  attr_writer(:side1, :side2, :side3)

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def check()
    if ((@side1 + @side2) <= @side3) || ((@side2 + @side3) <= @side1) || ((@side1 + @side3) <= @side2)
    "Not a triangle"

    # Equilateral
    elsif (@side1 == @side2) && (@side2 == @side3)
      "Equilateral"

    # Scalene
    elsif (@side1 != @side2) && (@side1 != @side3) && (@side2 != @side3)
      "Scalene"

    # Isocelese
    elsif (@side1 != @side3) || (@side3 != @side2)
      "Isocelese"

      # Not a Triangle
    else
      "Whelp.."
    end
  end
end

triangle = Triangle.new(3, 4, 3)
triangle2 = Triangle.new(2, 4, 3)
