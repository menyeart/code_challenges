require "./digits"
require "pry"

RSpec.describe "digits" do
  it "determines if a given positive integer has a specific property" do
    digits = Digit.new

    expect(digits.dig_pow(89, 1)).to eq(1)
    expect(digits.dig_pow(92, 1)).to eq(-1)
    expect(digits.dig_pow(695, 2)).to eq(2)
    expect(digits.dig_pow(46288, 3)).to eq(51)
  end
end