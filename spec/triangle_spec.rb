require ('rspec')
require('triangle')
require ('pry')
# Triangle#check
describe('triangle') do
  it("Should be an equilateral.") do
    triangle = Triangle.new(2, 2, 2)
    expect(triangle.check()).to(eq("Equilateral"))
  end

  it("Should be an isocelse.") do
    triangle = Triangle.new(3, 4, 3)
    expect(triangle.check()).to(eq("Isocelese"))
  end

  it("Should be a scalene.") do
    triangle = Triangle.new(3, 4, 2)
    expect(triangle.check()).to(eq("Scalene"))
  end

  it("Isn't a triangle.") do
    triangle = Triangle.new(2, 2, 8)
    expect(triangle.check()).to(eq("Not a triangle"))
  end

end
