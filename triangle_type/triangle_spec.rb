require './triangle'
require 'pry'

RSpec.describe "Triangle" do
  it "is a triangle" do
    triangle = Triangle.new(7,3,2)

    expect(triangle).to be_a(Triangle)
  end

  it "is not a triangle" do
    triangle = Triangle.new(7,3,2)

    expect(triangle.triangle_type).to eq(0)
  end

  xit "is not a triangle" do
    triangle = Triangle.new(2,4,6)

    expect(triangle.triangle_type).to eq(0)
  end

  xit "it's an acute triangle" do
    triangle = Triangle.new(8,5,7)

    expect(triangle.triangle_type).to eq(1)
  end

  xit "it's an obtuse triangle" do
    triangle = Triangle.new(7,12,8)

    expect(triangle.triangle_type).to eq(3)
  end

  xit "it's a right triangle" do
    triangle = Triangle.new(3,4,5)

    expect(triangle.triangle_type).to eq(2)
  end


end