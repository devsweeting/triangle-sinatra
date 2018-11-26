class Triangle
  attr_writer(:side1, :side2, :side3)

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def check()
    if (@side1 + @side2) <= @side3
      "Not a triangle"

    elsif (@side2 + @side3) <= @side1
      "Not a triangle"

    elsif (@side1 + @side3) <= @side2
      "Not a triangle"

    # Equilateral
    elsif (@side1 == @side2) && (@side2 == @side3)
      "Equilateral"

    # Scalene
    elsif (@side1 != @side2) && (@side1 != @side3) && (@side2 != @side3)
      "Scalene"

    # Isocelese
    elsif (@side1 != @side3)
      "Isocelese"

    elsif (@side3 != @side2)
      "Isocelese"

    else
      "Whelp.."
    end
  end
end

# triangle = Triangle.new(2, 2, 2)
