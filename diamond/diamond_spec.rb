require './diamond'
require 'pry'

RSpec.describe "Diamond" do
  it "can create diamonds" do
    diamond_1 = Diamond.new


    expect(diamond_1.create_diamond(3)).to eq(" *\n***\n *\n")
    expect(diamond_1.create_diamond(0)).to eq(nil)
    expect(diamond_1.create_diamond(5)).to eq("  *\n ***\n*****\n ***\n  *\n")
  end
end